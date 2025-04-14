#requires -PSEdition Core
$sites = @(
    @{
        Title = 'Brand'
        Url = '/sites/brand'
        Type = 'CommunicationSite'
        Hub = 'Work @ Contoso'
    }
    @{
        Title = 'Communication Site'
        Url = '/'
        Type = 'CommunicationSite'
    }
    @{
        Title = 'Contoso Landings'
        Url = '/sites/ContosoLandings'
        Type = 'CommunicationSite'
    }
    @{
        Title = 'Contoso Web 1'
        Url = '/sites/ContosoWeb1'
        Type = 'CommunicationSite'
    }
    @{
        Title = 'Contoso Web 2'
        Url = '/sites/ContosoWeb2'
        Type = 'CommunicationSite'
    }
    @{
        Title = 'Digital Initiative Public Relations'
        Alias = 'DigitalInitiativePublicRelations'
        Type = "Team"
        Owners = 'MeganB', 'MiriamG', 'admin'
    }
    @{
        Title = 'Executive Corner'
        Url = '/sites/Exec'
        Type = 'CommunicationSite'
        Hub = 'Work @ Contoso'
    }
    @{
        Title = 'HR'
        Url = '/sites/HR'
        Type = 'CommunicationSite'
        Hub = 'Work @ Contoso'
    }
    @{
        Title = 'Leadership Team'
        Alias = 'Leadership'
        Type = 'TeamSite'
        Owners = 'MeganB', 'admin', 'NestorW'
    }
    @{
        Title = 'Mark 8 Project Team'
        Alias = 'Mark8ProjectTeam'
        Type = 'Team'
        Owners = 'MeganB', 'admin', 'NestorW'
    }
    @{
        Title = 'News @ Contoso'
        Url = '/sites/News'
        Type = 'CommunicationSite'
        Hub = 'Work @ Contoso'
    }
    @{
        Title = 'Operations'
        Alias = 'Operations'
        Type = 'TeamSite'
        Owners = 'AllanD', 'MeganB', 'admin'
        Hub = 'Work @ Contoso'
    }
    @{
        Title = 'Retail'
        Alias = 'Retail'
        Type = 'Team'
        Owners = 'MeganB', 'admin', 'NestorW'
    }
    @{
        Title = 'Sales and Marketing'
        Alias = 'SalesAndMarketing'
        Type = 'Team'
        Owners = 'IsaiahL', 'JohannaL', 'MeganB', 'MiriamG', 'admin', 'NestorW'
        Hub = 'Work @ Contoso'
    }
    @{
        Title = 'U.S. Sales'
        Alias = 'USSales'
        Type = 'Team'
        Owners = 'IsaiahL', 'MeganB', 'admin'
    }
    @{
        Title = 'Work @ Contoso'
        Url = '/sites/Work'
        Type = 'CommunicationSite'
        Hub = 'Work @ Contoso'
        IsHub = $true
    }
)

# Import the required Graph modules

Import-Module `
    Microsoft.Graph.Authentication, `
    Microsoft.Graph.Identity.DirectoryManagement, `
    Microsoft.Graph.Users

# Connect to Microsoft Graph
Connect-MgGraph -Scopes 'Domain.Read.All'

# Get Entra Id default domain using Microsoft Graph
$defaultDomain = (Get-MgDomain | Where-Object { $PSItem.IsDefault }).Id
$tenantName = $defaultDomain.Split('.')[0]

# Get available licenses using Microsoft Graph
$license = Get-MgSubscribedSku |
    Where-Object { $PSItem.SkuPartNumber -like 'Office_365_E5*'}

# Get licensed users in default domain using Microsoft Graph
$licensedUsers = Get-MgUser `
    -Filter `
        "AssignedLicenses/any(x:x/skuId eq $(
            $license.SkuId
        )) and endswith(UserPrincipalName, '$defaultDomain')" `
    -ConsistencyLevel eventual `
    -Property DisplayName, UserPrincipalName, AssignedLicenses -All

# Disconnect from Microsoft Graph
Disconnect-MgGraph

# Import the Microsoft Teams module
Import-Module MicrosoftTeams

# Import the PnP PowerShell module
Import-Module PnP.PowerShell -MinimumVersion 2.99.188

# Get the PnP Entra ID AppId using PnP PowerShell

$appId = Get-PnPManagedAppId -Url "https://$tenantname-admin.sharepoint.com"

if (-not $appId) {
    Write-Error "PnP AppId not found. Set the PnP AppId using the command: `
        Set-PnPManagedAppId -Url 'https://$tenantName-admin.sharepoint.com' `
        -AppId '00000003-0000-0ff1-ce00-000000000000'"
}

# Connect to Microsoft Teams
Connect-MicrosoftTeams

# Connect to PnP Online

Connect-PnPOnline -Url "https://$tenantName-admin.sharepoint.com" -Interactive

# Get all tenant sites
$tenantSites = Get-PnPTenantSite -Detailed
# Iterate through the sites

foreach ($site in $sites) {

    # Check if the site already exists in the tenant

    $tenantSite = $tenantSites | Where-Object { $PSItem.Title -eq $site.Title }
    if (-not $tenantSite) {
        # If site does not exist, create it
        switch ($site.Type) {
            'Team' {
                Write-Host "Creating Team site: $($site.Title)"
                New-Team -DisplayName $site.Title -MailNickName $site.Alias
            }
            'TeamSite' {
                Write-Host "Creating Team site: $($site.Title)"
                New-PnPSite `
                    -Type TeamSite `
                    -Title $site.Title `
                    -Alias $site.Alias `
                    -SiteAlias $site.Alias `
                    -Lcid 1033 `
                    -Owners (
                        $site.Owners |
                        ForEach-Object { "$PSItem@$defaultDomain" }
                    ) `
                    -Members $licensedUsers.UserPrincipalName
            }
            'CommunicationSite' {
                Write-Host "Creating Communication site: $($site.Title)"
                New-PnPSite `
                    -Type CommunicationSite `
                    -Title $site.Title `
                    -Url "https://$tenantName.sharepoint.com/$($site.Url)" `
                    -Lcid 1033 `
                    -Owner "admin@$defaultDomain" `
            }
            Default {}
        }
    }

    # Add the Owners to the group

    if ($site.Type -eq 'Team' -or $site.Type -eq 'TeamSite') {
        $owners = $site.Owners | ForEach-Object { "$PSItem@$defaultDomain" }
        $microsoft365GroupOwners = Get-PnPMicrosoft365GroupOwner `
            -Identity $site.Title
        $users = $owners | Where-Object {
            $PSItem -notin $microsoft365GroupOwners.UserPrincipalName -and `
            $PSItem -in $licensedUsers.UserPrincipalName
        }
        
        if ($users) {
            Write-Host "Adding owners to Microsoft 365 group: $($site.Title)"
            Add-PnPMicrosoft365GroupOwner -Identity $site.Title -Users $users
        }
    }   

    # Add the members to the group

    if ($site.Type -eq 'Team' -or $site.Type -eq 'TeamSite') {
        $microsoft365GroupMembers = Get-PnPMicrosoft365GroupMember `
            -Identity $site.Title
        $users = $licensedUsers.UserPrincipalName | Where-Object {
            $PSItem -notin $microsoft365GroupMembers.UserPrincipalName
        }
        if ($users) {
            Write-Host "Adding members to Microsoft 365 group: $($site.Title)"
            Add-PnPMicrosoft365GroupMember -Identity $site.Title -Users $users
        }
    }
}

# Get all tenant sites
$tenantSites = Get-PnPTenantSite -Detailed

# Iterate through the sites

foreach ($site in $sites) {
    # Connect to site

    $tenantSite = $tenantSites | Where-Object { $PSItem.Title -eq $site.Title }
    if ($tenantSite) {
        $connection = Connect-PnPOnline `
            -Url $tenantSite.Url `
            -ReturnConnection

        # Register site as hub, if applicable
        if ($site.IsHub) {
            # Check if the site is already registered as a hub
            $pNPSite = Get-PnPSite -Connection $connection
            $hubSite = Get-PnPHubSite `
                -Connection $connection `
                -Identity $pNPSite `
                -ErrorAction SilentlyContinue
            if (-not $hubSite.SiteId) {
                # Register the site as a hub
                Write-Host "Registering site as hub: $($site.Title)"
                Register-PnPHubSite -Site $pNPSite -Connection $connection
            } else {
                Write-Host "Site is already registered as a hub: $($site.Title)"
            }
            # Set the hub site for the site, if applicable
            Set-PnPHubSite `
                -Connection $connection -Identity $pNPSite -Title $site.Hub

            # Register child sites with the hub

            $hubSiteChild = Get-PnPHubSiteChild -Identity $tenantSite.Url
            $childSites = $sites | Where-Object {
                $PSItem.Hub -eq $site.Hub -and `
                -not $PSItem.IsHub
            }
            $urls = (
                $tenantSites |
                Where-Object { $PSItem.Title -in $childSites.Title }
            ).Url

            $urls |
            Where-Object { $PSItem -notin $hubSiteChild } |
            ForEach-Object {
                Write-Host `
                    "Registering $($PSItem) as child site of $($site.Hub)"
                Add-PnPHubSiteAssociation -Site $PSItem -HubSite $tenantSite.Url
            }
        }

        # Add all licensed users to the Owners SharePoint Group

        $group = Get-PnPGroup -Connection $connection -AssociatedOwnerGroup
        $groupMember = Get-PnPGroupMember -Connection $connection -Group $group
        $licensedUsers |
        Where-Object { 
            $PSItem.UserPrincipalName -notin $groupMember.Email
        } |
        ForEach-Object {
            Write-Host `
                "Adding $($PSItem.DisplayName) to $($site.Title) Owners group"
            Add-PnPGroupMember `
                -Connection $connection `
                -LoginName $PSItem.UserPrincipalName `
                -Group $group
        }

        # Add all licensed users to the Members SharePoint Group

        $group = Get-PnPGroup -Connection $connection -AssociatedMemberGroup
        $groupMember = Get-PnPGroupMember -Connection $connection -Group $group
        $licensedUsers |
        Where-Object {
            $PSItem.UserPrincipalName -notin $groupMember.Email
        } |
        ForEach-Object {
            Write-Host `
                "Adding $($PSItem.DisplayName) to $($site.Title) Members group"
            Add-PnPGroupMember `
                -Connection $connection `
                -LoginName $PSItem.UserPrincipalName `
                -Group $group
        }
    }
}

# Disconnect from PnP Online
Disconnect-PnPOnline

# Disconnect from Microsoft Teams
Disconnect-MicrosoftTeams
