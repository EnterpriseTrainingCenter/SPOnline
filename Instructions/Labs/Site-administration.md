# Lab: Site administration

## Setup

Students must have finished the following practices before starting this lab:

1. [Install Visual Studio Code](../Practices/Install-Visual-Studio-Code.md)
1. [Install Microsoft Graph Beta PowerShell module](../Practices/Install-Microsoft-Graph-Beta-PowerShell-module.md)

On LON-CL1, sign in as Administrator.

If you skipped Lab [Get started with SharePoint administration](/Instructions/Labs/Get-started-with-SharePoint-administration.md), in **PowerShell** or **Windows PowerShell**, execute **C:\LabResources\Solutions\Start-SharePointAndTeamsConfiguration.ps1**. If you are asked to sign in, use the global administrator credentials of your tenant.

## Introduction

To support various projects you want to create team sites for the SharePoint and the OneDrive deployment project, as well as for the IT department. You want to test the upgrade of a site to a Microsoft 365 group and add Teams functionality. Moreover, you want to test the restore functionality of sites and Microsoft 365 group.  Furthermore, you want to create communication sites for the IT department and a new home site for Contoso. You want to grant Joni Sherman site admins permissions to the new home site.

Your management asks you to limit the creation of Microsoft 365 groups and SharePoint sites to members of the IT department. Futhermore, new team sites should be created under the /teams/ URL and should have your time zone as default.

Your company wants to manage site storage limits manually. All existing sites should be limited to 1 GB by default.

The address of a site needs to be changed to a more convenient URL. Users should be redirected from the old URL to the new.

A site created by a user should be made unavailable. Furthermore, the site of a cancelled project should be made read-only.

## Exercises

1. [Manage sites](#exercise-1-manage-sites)
1. [Manage site admins](#exercise-2-manage-site-admins)
1. [Manage site creation](#exercise-3-manage-site-creation)
1. [Manage storage limits](#exercise-4-manage-storage-limits)
1. [Change a site address](#exercise-5-change-a-site-address)
1. [Manage lock states](#exercise-6-manage-lock-states)

## Exercise 1: Manage sites

1. [Create a team site with a Microsoft 365 group](#task-1-create-a-team-site-with-a-microsoft-365-group)

    Site name: **IT department internal**

    Site description: **Site for internal collaboration within the IT department. Information on this site must not be published without permission.**

    Group email address: **IT**

    Site address: **IT-internal**

    Owner: **Lynne Robbins**

    Members:

    * Miriam Graham
    * Alex Wilber
    * Christie Cline
    * Isaiah Langer
    * Megan Bowen
    * Adele Vance
    * Debra Berger
    * Nestor Wilke
    * Lee Gu
    * Joni Sherman
    * Pradeep Gupta

1. [Create team sites without a Microsoft 365 group](#task-2-create-team-sites-without-a-microsoft-365-group)

    | Site name                   | Site description                                                   | Site address            |
    | --------------------------- | ------------------------------------------------------------------ | ----------------------- |
    | OneDrive deployment project | Plan, deploy, and maintain OneDrive                                | ../teams/Project1Drive  |
    | SharePoint playground       | Play around with SharePoint features, not intented for production  | ../sites/PlaygroundSite |

    For all sites, the language is English, and the primary adminsitrator is Lynne Robbins. Select your local time zone.

1. [Create communication sites](#task-3-create-communication-sites)

    | Template          | Site name     | Site description                                                                     | Site address  |
    | ----------------- | ------------- | ------------------------------------------------------------------------------------ | ------------- |
    | Department        | IT department | External communication site of the IT department for instructions, help, and support | ../sites/IT   |
    | Organization home | Contoso home  | Contoso's new home site                                                              | ../sites/home |

    For all sites, the language is English, and the primary administrator is Lynne Robbins. Select your local time zone.

1. [Connect the team site OneDrive deployment project to a new Microsoft 365 group](#task-4-connect-a-team-site-to-a-new-microsoft-365-group) with the alias Project1Drive
1. [Upgrade the Microsoft 365 group OneDrive deployment project to a team](#task-5-upgrade-a-microsoft-365-group-to-a-team)
1. [Delete a site without a Microsoft 365 group](#task-6-delete-a-site-without-a-microsoft-365-group), SharePoint Project
1. [Delete a Microsoft 365 group-connected site](#task-7-delete-a-microsoft-365-group-connected-site), OneDrive deployment project
1. [Restore site](#task-8-restore-site) SharePoint Project
1. [Restore Microsoft 365 group OneDrive](#task-9-restore-microsoft-365-group) deployment project

### Task 1: Create a team site with a Microsoft 365 group

#### Web UI

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Sites**, **Active sites**.
1. In Active sites, click **Create**.
1. In Create a site: Select the site type, click **Team site**.
1. In Select a template, click **Standard team**.
1. In Preview and use 'Standard team' template, click **Use template**.
1. In Give your site a name, under **Site name**, type **IT department internal**. Under **Site description**, type **Site for internal collaboration within the IT department. Information on this site must not be published without permission.**. Under Group email address, type **IT**. Under **Site address**, type **IT-internal**. Under **Group owner**, find and click **Lynne Robbins**. Click **Next**.
1. In Set language and other options, under **Privacy settings**, ensure **Private - only members can access this site** is selected. Under **Select a language**, ensure **English** is selected. Under **Time zone**, select your time zone. Click **Create site**.
1. In Add site owners and members, under **Add Members**, find and click the users from the list above and click **Finish**.
1. In **Active sites**, click **IT department internal**.
1. On the IT department internal panel, click the tab **Membership**.
1. On the tab Membership, click **Members**. Verify the users listed above were added as members.
1. Close the **IT department internal** panel.

#### PowerShell

Perform this task on LON-CL1.

1. Open **Terminal**.
1. In Terminal, ensure **PowerShell 7.x.y** is shown at the top. Import modules **Microsoft.Graph.Authentication** and **Microsoft.Graph.Users**.

    ````powershell
    Import-Module Microsoft.Graph.Authentication, Microsoft.Graph.Users
    `````

1. Sign in to Microsoft Graph.

    ````powershell
    Connect-Graph -Scopes User.ReadBasic.All
    `````

1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Permissions requested, click **Accept**.
1. Find the user of Lynne Robbins and store it in a variable.

    ````powershell
    $owner = Get-MgUser -Filter "Displayname eq 'Lynne Robbins'"
    ````

    If you receive an error message at this point, close Terminal and start the task again.

1. Sign in to SharePoint.

    ````powershell
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Import-Module PnP.PowerShell
    Connect-PnPOnline `
        -Url "https://$tenantName-admin.sharepoint.com/" -Interactive
    ````

1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Create a standard team site with a Microsoft 365 group. As title, use **IT department internal**. As description, use **Site for internal collaboration within the IT department. Information on this site must not be published without permission.**. The group email address should be **IT**. The site address should be **IT-internal**. The group owner must be the user in the variable you created in the previous step.

    ````powershell
    # You can use a different time zone
    $title = 'IT department internal'
    New-PnPSite `
        -Type TeamSite `
        -Title $title `
        -Description `
            'Site for internal collaboration within the IT department. Information on this site must not be published without permission.' `
            -Alias 'IT' `
            -SiteAlias 'IT-internal' `
            -Lcid 1033 `
            -Owners $owner.UserPrincipalName `
            -TimeZone UTCPLUS0100_AMSTERDAM_BERLIN_BERN_ROME_STOCKHOLM_VIENNA
    ````

1. Build a list of users to be added to the group.

    ````powershell
    $displayNames = @(
        'Miriam Graham'
        'Alex Wilber'
        'Christie Cline'
        'Isaiah Langer'
        'Megan Bowen'
        'Adele Vance'
        'Debra Berger'
        'Nestor Wilke'
        'Lee Gu'
        'Joni Sherman'
        'Pradeep Gupta'
    )
    $users = $displayNames | ForEach-Object { 
        Get-MgUser -Filter "Displayname eq '$PSItem'"
    }
    ````

1. Add the users to the new group.

    ````powershell
    Add-PnPMicrosoft365GroupMember `
        -Identity $title -Users $users.UserPrincipalName
    ````

1. Verify the members of the group.

    ````powershell
    Get-PnPMicrosoft365GroupMember -Identity $title
    ````

1. Disconnect from SharePoint and Graph.

    ````powershell
    Disconnect-PnPOnline
    Disconnect-Graph
    ````

### Task 2: Create team sites without a Microsoft 365 group

#### Web UI

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Sites**, **Active sites**.
1. In Active sites, click **Create**.
1. In Create a site: Select the site type, click **Browse more sites**.
1. In Other options, under **Choose a template**, ensure **Team site** is selected. Under **Site name**, type **OneDrive deployment project**. Under **Site description**, type **Plan, deploy and maintain OneDrive**. Under **Site address**, in the drop-down, select **../teams/** and, beside, type **Project1Drive**. Under **Primary administrator**, find and click **Lynne Robbins**. Click **Next**.
1. Under **Select a language**, ensure **English** is selected. Under **Time zone**, select your time zone. Click **Create site**.
1. Repeat from step 6 for the site **SharePoint playground**. Take the parameters for this site from the table above.

#### PowerShell

Perform this task on LON-CL1.

1. Open **Terminal**.
1. In Terminal, click the down chevron and **Windows PowerShell**.
1. Ensure **Windows Powershell** is shown at the top. Import modules **Microsoft.Graph.Authentication**, **Microsoft.Graph.Users**.

    ````powershell
    Import-Module Microsoft.Graph.Authentication, Microsoft.Graph.Users
    `````

1. Sign in to Microsoft Graph.

    ````powershell
    Connect-Graph -Scopes User.ReadBasic.All
    `````

1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Permissions requested, click **Accept**.
1. Find the user of Lynne Robbins and store it in a variable.

    ````powershell
    $owner = Get-MgUser -Filter "Displayname eq 'Lynne Robbins'"
    ````

    If you receive an error message at this point, close Terminal and start the task again.

1. Sign in to SharePoint.

    ````powershell
    Import-Module Microsoft.Online.SharePoint.PowerShell
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com/"
    ````

1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Create a team site **OneDrive deployment project** with the url **teams/Project1Drive**.

    ````powershell
    # TimeZoneId 4 means Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna
    New-SPOSite `
        -Url "https://$tenantName.sharepoint.com/teams/Project1Drive" `
        -Owner $owner.UserPrincipalName `
        -Title 'OneDrive deployment project' `
        -Template 'STS#3' `
        -LocaleId 1033 `
        -TimeZoneId 4 `
        -StorageQuota 2560
    ````

1. Create a team site **SharePoint playground** with the url **sites/PlaygroundSite**.

    ````powershell
    # TimeZoneId 4 means Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna
    New-SPOSite `
        -Url "https://$tenantName.sharepoint.com/sites/PlaygroundSite" `
        -Owner $owner.UserPrincipalName `
        -Title 'SharePoint playground' `
        -Template 'STS#3' `
        -LocaleId 1033 `
        -TimeZoneId 4 `
        -StorageQuota 2560
    ````

1. Disconnect from SharePoint and Graph.

    ````powershell
    Disconnect-SPOService
    Disconnect-Graph
    ````

### Task 3: Create communication sites

#### Web UI

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Sites**, **Active sites**.
1. In Active sites, click **Create**.
1. In Create a site: Select the site type, click **Communication site**.
1. In Select a template, click **Department**.
1. In Preview and use 'Department' template, click **Use template**.
1. In Give your site a name, under **Site name**, type **IT department**. Under **Site description**, type **External communication site of the IT department for instructions, help, and support**. Under **Site address**, in the drop-down, ensure **../sites/** is selected and, beside, type **IT**. Under **Site owner**, find and click **Lynne Robbins**. Click **Next**.
1. In Set language and other options, under **Select a language**, ensure **English** is selected. Under **Time zone**, select your time zone. Click **Create site**.
1. Repeat from step 6 for the site **Contoso home**. Take the parameters for this site from the table above.

#### PowerShell

Perform this task on LON-CL1.

1. Open **Terminal**.
1. In Terminal, ensure **PowerShell 7.x.y** is shown at the top. Import modules **Microsoft.Graph.Authentication** and **Microsoft.Graph.Users**.

    ````powershell
    Import-Module Microsoft.Graph.Authentication, Microsoft.Graph.Users
    `````

1. Sign in to Microsoft Graph.

    ````powershell
    Connect-Graph -Scopes User.ReadBasic.All
    `````

1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Permissions requested, click **Accept**.
1. Find the user of Lynne Robbins and store it in a variable.

    ````powershell
    $owner = Get-MgUser -Filter "Displayname eq 'Lynne Robbins'"
    ````

    If you receive an error message at this point, close Terminal and start the task again.

1. Sign in to SharePoint.

    ````powershell
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Import-Module PnP.PowerShell
    Connect-PnPOnline `
        -Url "https://$tenantName-admin.sharepoint.com/" -Interactive
    ````

1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Create a communication site. As title, use **IT department**. As description, use **External communication site of the IT department for instructions, help, and support**. The site address should be **/sites/it**. The group owner must be the user in the variable you created in the previous step.

    ````powershell
    # You can use a different time zone
    New-PnPSite `
        -Type CommunicationSite `
        -Title 'IT department' `
        -Description `
            'External communication site of the IT department for instructions, help, and support' `
        -Url "https://$tenantName.sharepoint.com/sites/it" `
        -Lcid 1033 `
        -Owner $owner.UserPrincipalName `
        -TimeZone UTCPLUS0100_AMSTERDAM_BERLIN_BERN_ROME_STOCKHOLM_VIENNA
    ````

    Note, that you cannot apply the department site design using PowerShell. However, you can apply the design afterwards in the site. See optional steps below.

1. Create a communication site. As title, use **Contoso home**. As description, use **Contoso's new home site**. The site address should be **/sites/home**. The group owner must be the user in the variable you created in the previous step.

    ````powershell
    # The single quote in the description must be escaped by two single quotes
    # You can use a different time zone
    New-PnPSite `
        -Type CommunicationSite `
        -Title 'Contoso home' `
        -Description 'Contoso''s new home site' `
        -Url "https://$tenantName.sharepoint.com/sites/home" `
        -Lcid 1033 `
        -Owner $owner.UserPrincipalName `
        -TimeZone UTCPLUS0100_AMSTERDAM_BERLIN_BERN_ROME_STOCKHOLM_VIENNA
    ````

1. Disconnect from SharePoint and Graph.

    ````powershell
    Disconnect-PnPOnline
    Disconnect-Graph
    ````

If you want to apply the department site design to the IT site, optionally, follow these steps:

1. Open **Microsoft Edge**.
1. Navigate to **https://\<your tenant name\>.sharepoin.com/sites/it**.
1. On the site IT department, click the *Settings* icon (the gear icon) and **Apply a site template**.
1. In Select a template, click **Department**.
1. On Preview and use 'Department' template, click **Use template**.

### Task 4: Connect a team site to a new Microsoft 365 group

At the time of writing this lab, the feature to connect a team site to a new Microsoft 365 group using the web site interface, was broken. Therefore, only PowerShell instructions are provided.

#### PowerShell

Perform this task on LON-CL1.

1. Open **Terminal**.
1. In Terminal, click the down chevron and click **Windows PowerShell**.
1. Connect to Sharepoint Online.

    ````powershell
    
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com"
    ````

1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.

1. Connect the site **OneDrive deployment project** to a new Microsoft 365 group with the same name and the alias **Project1Drive**.

    ````powershell
    Set-SPOSiteOffice365Group `
        -Site "https://$tenantName.sharepoint.com/teams/Project1Drive" `
        -DisplayName 'OneDrive deployment project' `
        -Alias 'Project1Drive'
    ````

1. Disconnect from SharePoint Online.

    ````powershell
    Disconnect-SPOService
    `````

### Task 5: Upgrade a Microsoft 365 group to a team

#### Web UI

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://teams.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In the left navigation, click **Teams**.
1. In Teams, at the top, click **+** and click **Create team**.
1. In Create a team, click the link **More create team options**.
1. In Create team, on the left, click **From group**.
1. Under Which Microsoft 365 group do you want to use?, click **OneDrive deployment project** and click **Add Team**.
1. Click to close **Nice work!**.
1. On the left click **Teams**.

    Verify that the OneDrive deployment project is visible as a new team.

#### PowerShell

Perform this task on LON-CL1.

1. Open **Terminal**.
1. In Terminal, ensure **PowerShell 7.x.y** is shown at the top. Sign in to SharePoint.

    ````powershell
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Import-Module PnP.PowerShell
    Connect-PnPOnline `
        -Url "https://$tenantName-admin.sharepoint.com/" -Interactive
    ````

1. Retrieve the Microsoft 365 group **OneDrive deployment project** and store it in a variable.

    ````powershell
    $pnPMicrosoft365Group = Get-PnPMicrosoft365Group `
        -Identity 'OneDrive deployment project'
    ````

1. Connect to Microsoft Teams.

    ````powershell
    Import-Module MicrosoftTeams
    Connect-MicrosoftTeams
    ````

1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Add the Teams functionality to the group.

    ````powershell
    New-Team -GroupId $pnPMicrosoft365Group.Id
    `````

1. Verify that OneDrive deployment project is a team.

    ````powershell
    Get-Team -GroupId $pnPMicrosoft365Group.Id
    ````

1. Disconnect from SharePoint and Teams.

    ````powershell
    Disconnect-PnpOnline
    Disconnect-MicrosoftTeams
    ````

### Task 6: Delete a site without a Microsoft 365 group

#### Web UI

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Sites**, **Active sites**.
1. In Active sites, select **SharePoint playground** and click **Delete**.
1. In the Delete SharePoint playground? panel, click **Delete**.

#### PowerShell

Perform this task on LON-CL1.

1. Open **Terminal**.
1. In Terminal, click the down chevron and click **Windows PowerShell**.
1. Connect to Sharepoint Online.

    ````powershell
    
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com"
    ````

1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Delete the **SharePoint Playground site**.

    ````powershell
    Remove-SPOSite `
        -Identity "https://$tenantName.sharepoint.com/sites/PlaygroundSite"
    ````

1. On the prompt Performing the operation "Remove-SPOSite" on target "https://WWLx341755.sharepoint.com/sites/PlaygroundSite", enter **y**.
1. Disconnect from SharePoint.

    ````powershell
    Disconnect-SPOService
    ````

### Task 7: Delete a Microsoft 365 group-connected site

#### Web UI

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Sites**, **Active sites**.
1. In Active sites, select **Onedrive deployment project** and click **Delete**.
1. In the Delete Onedrive deployment project? panel, click **Delete**.

#### PowerShell

Perform this task on LON-CL1.

1. Open **Terminal**.
1. In Terminal, ensure **PowerShell 7.x.y** is shown at the top. Sign in to SharePoint.

    ````powershell
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Import-Module PnP.PowerShell
    Connect-PnPOnline `
        -Url "https://$tenantName-admin.sharepoint.com/" -Interactive
    ````

1. Delete the group **OneDrive deployment project**.

    ````powershell
    Remove-PnPMicrosoft365Group -Identity 'OneDrive deployment project'
    ````

1. Disconnect from SharePoint.

    ````powershell
    Disconnect-PnPOnline
    ````

### Task 8: Restore site

#### Web UI

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Sites**, **Deleted sites**.
1. In Deleted sites, select **SharePoint playground** and click **Restore**.
1. Click **Active sites**.

    Verify that SharePoint playground is listed in Active sites again.

#### PowerShell

Perform this task on LON-CL1.

1. Open **Terminal**.
1. In Terminal, click the down chevron and click **Windows PowerShell**.
1. Connect to Sharepoint Online.

    ````powershell
    
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com"
    ````

1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. List the deleted sites.

    ````powershell
    Get-SPODeletedSite
    ````

    Verify that the PlaygroundSite is listed.

1. Restore the PlaygroundSite.

    ````powershell
    Restore-SPODeletedSite `
        -Identity https://$tenantName.sharepoint.com/sites/PlaygroundSite
    ````

1. List the active sites.

    ````powershell
    Get-SPOSite
    ````

    Verify that the PlaygroundSite is listed.

1. Disconnect from SharePoint.

    ````powershell
    Disconnect-SPOService
    ````

### Task 9: Restore Microsoft 365 group

#### Web UI

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Sites**, **Deleted sites**.
1. In Deleted sites, select **OneDrive deployment project** and click **Restore**.
1. In Restore site, click **Restore**.
1. Click **Active sites**.

    Verify that OneDrive deployment project is listed in Active sites again.

1. In Microsoft Edge, click the tab with the **Microsoft 365 admin center**.
1. In Microsoft 365 admin center, click **Teams & groups** and **Active teams & groups**.

    Verify that the OneDrive deployment project is listed in the tab **Teams & Microsoft 365 groups** and has the *Teams* icon beside it.

1. Click **Deleted groups**.

    You could have restored the Microsoft 365 group with the site from here too.

#### PowerShell

Perform this task on LON-CL1.

1. Open **Terminal**.
1. In Terminal, ensure **PowerShell 7.x.y** is shown at the top. Sign in to SharePoint.

    ````powershell
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Import-Module PnP.PowerShell
    Connect-PnPOnline `
        -Url "https://$tenantName-admin.sharepoint.com/" -Interactive
    ````

1. List deleted Microsoft 365 groups.

    ````powershell
    Get-PnPDeletedMicrosoft365Group
    ````

    Verify that OneDrive deployment project is listed.

1. Restore the OneDrive deployment project Microsoft 365 group.

    ````powershell
    Restore-PnPDeletedMicrosoft365Group -Identity 'OneDrive deployment project'
    `````

1. List the Microsoft 365 groups

    ````powershell
    Get-PnPMicrosoft365Group
    ````

    Verify that OneDrive deployment project is listed.

1. Disconnect from SharePoint.

    ````powershell
    Disconnect-PnPOnline
    ````

## Exercise 2: Manage site admins

1. [Add Joni Sherman as site admin to the site](#task-1-add-a-site-admins-to-a-site) Contoso home
1. [Verify site admin access](#task-2-verify-site-admin-access) by Joni Sherman

### Task 1: Add a site admins to a site

#### Web UI

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, select **Contoso home** and click **Membership**.
1. On the Contoso home panel, on the **Membership** tab, ensure **Site admins is selected**. Click **Add site admins**.
1. In Add site admins to Contoso home, find and click **Joni Sherman** and click **Add (1)**.
1. Above Add site admins to Contoso home, click the left arrow.

    Verify that Joni Sherman was added to the Site admins.

#### PowerShell

Perform this task on LON-CL1.

1. Open **Terminal**.
1. In Terminal, click the down chevron and **Windows PowerShell**.
1. Ensure **Windows Powershell** is shown at the top. Import modules **Microsoft.Graph.Authentication**, **Microsoft.Graph.Users**.

    ````powershell
    Import-Module Microsoft.Graph.Authentication, Microsoft.Graph.Users
    `````

1. Sign in to Microsoft Graph.

    ````powershell
    Connect-Graph -Scopes User.ReadBasic.All
    `````

1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Permissions requested, click **Accept**.
1. Find the user of **Joni Sherman** and store it in a variable.

    ````powershell
    $loginName = `
        (Get-MgUser -Filter "Displayname eq 'Joni Sherman'").UserPrincipalName
    ````

    If you receive an error message at this point, close Terminal and start the task again.

1. Sign in to SharePoint.

    ````powershell
    Import-Module Microsoft.Online.SharePoint.PowerShell
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com/"
    ````

1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Add the user as site admin to the site **Contoso home**.

    ````powershell
    $site = "https://$tenantName.sharepoint.com/sites/home"
    Set-SPOUser -Site $site -LoginName $loginName -IsSiteCollectionAdmin $true
    ````

1. Verify that **Joni Sherman** is is site admin of **Contoso home**.

    ````powershell
    Get-SPOUser -Site $site |
    Where-Object { $PSItem.IsSiteAdmin } |
    Format-Table DisplayName, LoginName, IsSiteAdmin, UserType
    ````

1. Disconnect from Graph and SharePoint

    ````powershell
    Disconnect-Graph
    Disconnect-SPOService
    ````

### Task 2: Verify site admin access

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, click the profile icon in the top-left corner, click **Other profiles** and **Browse as guest**.
1. In the new Microsoft Edge Guest instance, navigate to **https://\<your tenant\>.sharepoint.com/sites/home**.
1. Sign in as **JoniS@\<your tenant\>.onmicrosoft.com**.
1. On Contoso home, click the *Settings* icon (the gear icon) and click **Site information**.
1. On the Site Information panel, click **View all site settings**.

    Verify that, on Site Settings, Joni Sherman has a section Site Collection Administration.

1. On Site Settings, under **Users and Permissions**, click **Site collection administrators**.

    Verify that Lynne Robbins and Joni Sherman are Site Collection Administrators.

## Exercise 3: Manage site creation

1. [Verify that users can create Microsoft 365 groups](#task-1-verify-that-users-can-create-microsoft-365-groups) by, as Joni Sherman, creating Joni's group from Outlook
1. [Limit the users that can create Microsoft 365 groups](#task-2-limit-the-users-that-can-create-microsoft-365-groups) to members the security group sg-IT
1. [Verify that users cannot create Microsoft 365 groups](#task-3-verify-that-users-cannot-create-microsoft-365-groups)
1. [Verify that users can create SharePoint sites](#task-4-verify-that-users-can-create-sharepoint-sites) by, as Joni Sherman, creating a new site IT help desk from the SharePoint start page
1. [Change settings for site creation](#task-5-change-settings-for-site-creation) to disable site creation for users and create new team sites under /teams/
1. [Verify that users cannot create SharePoint sites](#task-6-verify-that-users-cannot-create-sharepoint-sites)

### Task 1: Verify that users can create Microsoft 365 groups

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, click the profile icon in the top-left corner, click **Other profiles** and **Browse as guest**.
1. In the new Microsoft Edge Guest instance, navigate to **https://www.microsoft365.com**.
1. On Login | Microsoft 365, click Sign in.
1. Sign in as **JoniS@\<your tenant\>.onmicrosoft.com**.
1. On Microsoft 365 home, click the app launcher and click **Outlook**.
1. In Outlook, on the left, click the *Groups* icon.
1. Above Groups, click **New group**.
1. In New group, under **Name**, type **Joni's Group** and click **Create**.
1. In Add members to Joni's Group, click **Not now**.
1. In Outlook, under groups, click Joni's Group.

    Verify that the group was created. You may want to explore the features of a group at this point.

### Task 2: Limit the users that can create Microsoft 365 groups

Perform this task on LON-CL1.

1. Open **Visual Studio Code**.
1. In Visual Studio Code, in the menu, click **File**, **Open Folder...**
1. In Open folder, navigate to **Documents\\PowerShell** and click **Select folder.**
1. In **Visual Studio Code**, in Do you trust the authors of the files in this folder?, click **Yes, I trust the authors**.
1. In Explorer view of Visual Studio Code, in the context-menu of **Scripts**, click **New File...**
1. Enter **Set-M365GroupCreationAllowedGroups.ps1** as file name.
1. In the bottom right message Do you want to install the recommended 'PowerShell' extension from Microsoft for the PowerShell language?, click **Install**.

    Wait for the installation to complete. This will take less than a minute. A TERMINAL pane will open at the bottom with a PowerShell prompt.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://learn.microsoft.com/en-us/microsoft-365/solutions/manage-creation-of-groups?view=o365-worldwide**
1. On page Manage who can create Microsoft 365 groups, scroll down to the script and click **Copy**. The script is provided for reference below.
1. Switch to **Visual Studio Code**.
1. In Visual Studio Code, click the tab **Set-M365GroupCreationAllowedGroups.ps1**.
1. In Set-M365GroupCreationAllowedGroups.ps1, paste the script from the web site.
1. In line 6 of the script reading

    ````powershell
    $GroupName = ""
    ````

    type **sg-IT** between the quotes. It should read

    ````powershell
    $GroupName = "sg-IT"
    ````

    Note: The security group sg-IT was previously created for you. The script should now look like this.

    ````powershell
    Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement
    Import-Module Microsoft.Graph.Beta.Groups

    Connect-MgGraph -Scopes "Directory.ReadWrite.All", "Group.Read.All"

    $GroupName = "sg-IT" # <-- This is the modified line
    $AllowGroupCreation = "False"

    $settingsObjectID = (Get-MgBetaDirectorySetting | Where-object -Property Displayname -Value "Group.Unified" -EQ).id

    if(!$settingsObjectID)
    {
        $params = @{
        templateId = "62375ab9-6b52-47ed-826b-58e47e0e304b"
        values = @(
                @{
                    name = "EnableMSStandardBlockedWords"
                    value = "true"
                }
            )
        }
        
        New-MgBetaDirectorySetting -BodyParameter $params
        
        $settingsObjectID = (Get-MgBetaDirectorySetting | Where-object -Property Displayname -Value "Group.Unified" -EQ).Id
    }

    
    $groupId = (Get-MgBetaGroup | Where-object {$_.displayname -eq $GroupName}).Id

    $params = @{
        templateId = "62375ab9-6b52-47ed-826b-58e47e0e304b"
        values = @(
            @{
                name = "EnableGroupCreation"
                value = $AllowGroupCreation
            }
            @{
                name = "GroupCreationAllowedGroupId"
                value = $groupId
            }
        )
    }

    Update-MgBetaDirectorySetting -DirectorySettingId $settingsObjectID -BodyParameter $params

    (Get-MgBetaDirectorySetting -DirectorySettingId $settingsObjectID).Values
    `````

1. On the menu, click **File**, **Save**.
1. On the menu, click **Run**, **Run Without Debugging**.

    It make take a few minutes before a sign in window appears.

1. A web browser opens, sign in as Global administrator.
1. On Permissions requested, click **Accept**.
1. When you see a page Authentication complete. You can return to the application. Feel free to close this browser tab, close the browser tab.
1. Switch to **Visual Studio Code**.

    In Visual Studio Code, in TERMINAL, the script should generate various outputs. Verify that the output shows EnableGroupCreation with a value of False and GroupCreationAllowedGroupId with the value of a GUID.

### Task 3: Verify that users cannot create Microsoft 365 groups

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, click the profile icon in the top-left corner, click **Other profiles** and **Browse as guest**.
1. In the new Microsoft Edge Guest instance, navigate to **https://www.microsoft365.com**.
1. On Login | Microsoft 365, click Sign in.
1. Sign in as **JoniS@\<your tenant\>.onmicrosoft.com**.
1. On Microsoft 365 home, click the app launcher and click **Outlook**.
1. In Outlook, on the left, click the *Groups* icon.

    Verify that you do not see the New group button anymore. It might take a few minutes before you can see the effect.

### Task 4: Verify that users can create SharePoint sites

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, click the profile icon in the top-left corner, click **Other profiles** and **Browse as guest**.
1. In the new Microsoft Edge Guest instance, navigate to **https://www.microsoft365.com**.
1. On Login | Microsoft 365, click Sign in.
1. Sign in as **JoniS@\<your tenant\>.onmicrosoft.com**.
1. On Microsoft 365 home, click the app launcher and click **SharePoint**.
1. On the SharePoint start page, click **Create Site**.
1. On Create a site: Select this site type, click **Team site**.
1. On Select a template, click **IT help desk**.
1. On Preview and use 'IT help desk template', click **Use template**.
1. On Give your site a name, under **site name**, type **IT help desk** and click **Next**.
1. On Set language and other options, under **Select a language**, ensure **English** is selected and click **Create site**.

    After a few moments, you will be redirected to the new team site. Note, that this is a team site without a Microsoft 365 group, since you disabled the Microsoft 365 group creation for users before. If Microsoft 365 group creation is allowed, the same process looks a little different and a Microsoft 365 group would be created.

### Task 5: Change settings for site creation

#### Web UI

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Settings**.
1. In Settings, click **Site creation**.
1. In Site creation, deactivate **Users can create SharePoint sites**. Under **Create team sites under**, in the drop-down, select **/teams/**. Under **Default time zone**, select your time zone. Click **Save**.

#### PowerShell

Perform this task on LON-CL1.

1. Open **Terminal**.
1. In Terminal, click the down chevron and **Windows PowerShell**.
1. Ensure **Windows Powershell** is shown at the top. Sign in to SharePoint.

    ````powershell
    Import-Module Microsoft.Online.SharePoint.PowerShell
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com/"
    ````

1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Disable self service site creation.

    ````powershell
    Set-SPOTenant -SelfServiceSiteCreationDisabled $true
    ````

1. Disconnect SharePoint

    ````powershell
    Disconnect-SPOService
    ````

### Task 6: Verify that users cannot create SharePoint sites

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, click the profile icon in the top-left corner, click **Other profiles** and **Browse as guest**.
1. In the new Microsoft Edge Guest instance, navigate to **https://www.microsoft365.com**.
1. On Login | Microsoft 365, click Sign in.
1. Sign in as **JoniS@\<your tenant\>.onmicrosoft.com**.
1. On Microsoft 365 home, click the app launcher and click **SharePoint**.

    Verify that there is no Create site button anymore.

## Exercise 4: Manage storage limits

1. [Change the site storage limits to manual](#task-1-change-the-site-storage-limits-to-manual)
1. [Change the storage limits of sites](#task-2-change-the-storage-limits-of-sites) to 1 GB

### Task 1: Change the site storage limits to manual

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Settings**.
1. In Settings, click **Site storage limits**.
1. In the Site storage limits panel, click **Manual** and click **Save**.

### Task 2: Change the storage limits of sites

#### Web UI

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, select **IT department**.
1. On the toolbar, click Storage. You might have to click the ellipsis (**...***) to see this command.
1. On the Edit storage limit panel, under **Maximum storage for this site**, type **1** and click **Save**.
1. Close the **Edit storage limit** panel.

Repeat from step 6 for other sites. For bulk changes of storage limits, PowerShell is much more effective.

#### PowerShell

Perform this task on LON-CL1.

1. Open **Terminal**.
1. In Terminal, click the down chevron and **Windows PowerShell**.
1. Ensure **Windows Powershell** is shown at the top. Sign in to SharePoint.

    ````powershell
    Import-Module Microsoft.Online.SharePoint.PowerShell
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com/"
    ````

1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Set the storage limit of the site **IT department** to **1 GB** and the warning level to **97 %** of the storage limit.

    ````powershell
    $storageQuota = 1024
    Set-SPOSite `
        -Identity https://$tenantName.sharepoint.com/sites/it `
        -StorageQuota $storageQuota `
        -StorageQuotaWarningLevel ($storageQuota * .97)
    ````

1. Disconnect SharePoint

    ````powershell
    Disconnect-SPOService
    ````

## Exercise 5: Change a site address

1. [Change the address of site](#task-1-change-the-address-of-a-site) SharePoint playground from PlaygroundSite to SharePoint-playground
1. [Verify automatic redirection](#task-2-verify-automatic-redirection) from the old address to the new address

### Task 1: Change the address of a site

#### Web UI

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, click **SharePoint playground**.
1. In the IT help desk panel, on the tab General, under **Site address**, click **Edit**.
1. In Edit SharePoint site address, under **SharePoint site address**, type **SharePoint-playground** and click **Save**.
1. In the message box Change site name?, click **No**.
1. Close the panel.

#### PowerShell

Perform this task on LON-CL1.

1. Open **Terminal**.
1. In Terminal, click the down chevron and **Windows PowerShell**.
1. Ensure **Windows Powershell** is shown at the top. Sign in to SharePoint.

    ````powershell
    Import-Module Microsoft.Online.SharePoint.PowerShell
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com/"
    ````

1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Check if the url of the site **/sites/PlaygroundSite** can be changed to **/sites/SharePoint-Playground**.

    ````powershell
    $identity = "https://$tenantName.sharepoint.com/sites/PlaygroundSite"
    $newSiteUrl = `
        "https://$tenantName.sharepoint.com/sites/SharePoint-Playground"
    Start-SPOSiteRename `
        -Identity $identity -NewSiteUrl $newSiteUrl -ValidationOnly
    ````

    In the output, verify that the ValidationState is Success.

1. Start the site rename.

    ````powershell
    Start-SPOSiteRename -Identity $identity -NewSiteUrl $newSiteUrl
    ````

1. On the prompt This operation will change the URL for site https://\<your tenant\>.sharepoint.com/sites/PlaygroundSite to https://\<your tenant\>.sharepoint.com/sites/SharePoint-Playground, enter **y**.
1. Disconnect SharePoint

    ````powershell
    Disconnect-SPOService
    ````

### Task 2: Verify automatic redirection

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/SharePointPlayground** (the old URL).
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.

Verify that you are redirected to the new URL. It can take a minute or two until you see the effect.

## Exercise 6: Manage lock states

1. [Add a page](#task-1-add-a-page) to the site Contoso home telling users that the content of the site is unavaible.
1. [Set the tenant's unavailability page](#task-2-set-the-tenants-unavailability-page) to the page you just created
1. [Make a site unavailable](#task-3-make-a-site-unavailable): Joni's group
1. [Verify the user experience for an unavailable site](#task-4-verify-the-user-experience-for-an-unavailable-site)
1. [Make a site read-only](#task-5-make-a-site-read-only): OneDrive deployment project
1. [Verify the user experience for a read-only site](#task-6-verify-the-user-experience-for-a-read-only-site)

### Task 1: Add a page

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com**.
1. In active site, beside **Contoso home**, click the URL.
1. On the site Contoso home, click **New**, **Page**.
1. On Welcome!, click **I've done this before** and **Let's go**.
1. On Page templates, click **Blank** and click **Create page**.
1. On the new page, click in **Add a title**, type **Sorry, this site is currently not avaiable**.
1. In **Add your text here.**, type **An administrator made this site unavailable, because the site need maintenance or the content is outdated. Don't worry! The content is not lost and the site may be available later again.**.
1. Turn **Comments** **Off**.
1. Click the full-width banner above the title. A floating toolbar appears. In the toolbar, click the ellipsis and **Browse images**.
1. In the image browser, click **Web search**. Search and select an appropriate image. Try to search for terms like **maintenance** or **out of order**. Click **Insert image**.
1. When you are satisfied with your page, click **Publish**.
1. In the Help others find your page, click **Copy link to page** and save the URL anywhere, e.g., in Notepad. Remove the part behind and including the question mark.

Note: In a real-world scenario, you should configure the permissions for the page to be viewable by everyone in your organization. Since permissions are not a topic in this lab, we assume this has already be done at the site level.

### Task 2: Set the tenant's unavailability page

Perform this task on LON-CL1.

1. Open **Terminal**.
1. In Terminal, click the down chevron and click **Windows PowerShell**.
1. Connect to Sharepoint Online.

    ````powershell
    
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com"
    ````

1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Set the no access redirect url.

    ````powershell
    Set-SPOTenant -NoAccessRedirectUrl '<paste the saved url from the previous task here>'
    ````

1. Disconnect from SharePoint Online.

    ````powershell
    Disconnect-SPOService
    `````

### Task 3: Make a site unavailable

Perform this task on LON-CL1.

1. Open **Terminal**.
1. In Terminal, click the down chevron and click **Windows PowerShell**.
1. Connect to Sharepoint Online.

    ````powershell
    
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com"
    ````

1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Store the site **Joni's group** in a variable

    ````powershell
    <#
        You have to type the single quote in the site title twice, because
        it is part of a string surrounded by single quotes.
    #>
    $sPOSite = Get-SPOSite |
    Where-Object Title -eq 'Joni''s group'
    ````

1. Make the site unavaible.

    ````powershell
    $sPOSite | Set-SPOSite -LockState NoAccess
    ````

1. Copy the URL of the site to the clipboard.

    ````powershell
    $sPOSite.Url | Set-Clipboard
    ````

1. Disconnect from SharePoint Online.

    ````powershell
    Disconnect-SPOService
    `````

### Task 4: Verify the user experience for an unavailable site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. Navigate to the URL you copied to the clipboard in the previous task.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.

    You should get redirected to the page you configured before.

### Task 5: Make a site read-only

Perform this task on LON-CL1.

1. Open **Terminal**.
1. In Terminal, click the down chevron and click **Windows PowerShell**.
1. Connect to Sharepoint Online.

    ````powershell
    
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com"
    ````

1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Store the site **OneDrive deployment project** in a variable

    ````powershell
    $sPOSite = Get-SPOSite |
    Where-Object Title -eq 'OneDrive deployment project'
    ````

1. Make the site read-only.

    ````powershell
    $sPOSite | Set-SPOSite -LockState ReadOnly
    ````

1. Copy the URL of the site to the clipboard.

    ````powershell
    $sPOSite.Url | Set-Clipboard
    ````

1. Disconnect from SharePoint Online.

    ````powershell
    Disconnect-SPOService
    `````

### Task 6: Verify the user experience for a read-only site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. Navigate to the URL you copied to the clipboard in the previous task.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.

    You should see a warning message at the top of the page telling you that this site is read-only at the administrator's request. Verify that you cannot add or change any content.
