# Lab: Site administration

## Setup

Students must have finished the following practices before starting this lab:

1. [Install Visual Studio Code](../Practices/Install-Visual-Studio-Code.md)
1. [Install Microsoft Graph Beta PowerShell module](../Practices/Install-Microsoft-Graph-Beta-PowerShell-module.md)

On LON-CL1, sign in as Administrator.

## Introduction

To support various projects you want to create team sites for the SharePoint and the OneDrive deployment project, as well as for the IT department. You want to test the upgrade of a site to a Microsoft 365 group and add Teams functionality. Moreover, you want to test the restore functionality of sites and Microsoft 365 group.  Furthermore, you want to create communication sites for the IT department and a new home site for Contoso.

## Exercises

1. [Manage sites](#exercise-1-manage-sites)
1. [Manage site admins](#exercise-2-manage-site-admins)
1. [Manage site creation](#exercise-3-manage-site-creation)
1. Manage storage limits
1. Change a site address
1. Manage hub sites
1. Manage the lock state
1. Replace the root site

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

    | Site name                   | Site description                                                  | Site address            |
    | --------------------------- | ----------------------------------------------------------------- | ----------------------- |
    | OneDrive deployment project | Plan, deploy and maintain OneDrive                                | ../teams/Project1Drive  |
    | SharePoint playground       | Team site without Microsoft 365 group to test SharePoint features | ../sites/PlaygroundSite |

    For all sites, the language is English, and the primary adminsitrator is Lynne Robbins. Select your local time zone.

1. [Create a communication sites](#task-3-create-communication-sites)

    | Template          | Site name     | Site description                                                                     | Site address  |
    | ----------------- | ------------- | ------------------------------------------------------------------------------------ | ------------- |
    | Department        | IT department | External communication site of the IT department for instructions, help, and support | ../sites/IT   |
    | Organization home | Contoso home  | Contoso's new home site                                                              | ../sites/home |

    For all sites, the language is English, and the primary adminsitrator is Lynne Robbins. Select your local time zone.

1. [Connect the team site OneDrive deployment project to a new Microsoft 365 group](#task-4-connect-a-team-site-to-a-new-microsoft-365-group) with the alias Project1Drive
1. [Upgrade the Microsoft 365 group OneDrive deployment project to a team](#task-5-upgrade-a-microsoft-365-group-to-a-team)
1. [Delete a site without a Microsoft 365 group](#task-6-delete-a-site-without-a-microsoft-365-group), SharePoint Playground
1. [Delete a Microsoft 365 group-connected site](#task-7-delete-a-microsoft-365-group-connected-site), OneDrive deployment project
1. [Restore site](#task-8-restore-site) SharePoint Playground
1. [Restore Microsoft 365 group OneDrive](#task-9-restore-microsoft-365-group) deployment project

### Task 1: Create a team site with a Microsoft 365 group

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
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

### Task 2: Create team sites without a Microsoft 365 group

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Sites**, **Active sites**.
1. In Active sites, click **Create**.
1. In Create a site: Select the site type, click **Browse more sites**.
1. In Other options, under **Choose a template**, ensure **Team site** is selected. Under **Site name**, type **OneDrive deployment project**. Under **Site description**, type **Plan, deploy and maintain OneDrive**. Under **Site address**, in the drop-down, select **../teams/** and, beside, type **Project1Drive**. Under **Primary administrator**, find and click **Lynne Robbins**. Click **Next**.
1. Under **Select a language**, ensure **English** is selected. Under **Time zone**, select your time zone. Click **Create site**.
1. Repeat from step 6 for the site **SharePoint playground**. Take the parameters for this site from the table above.

### Task 3: Create communication sites

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Sites**, **Active sites**.
1. In Active sites, click **Create**.
1. In Create a site: Select the site type, click **Communication site**.
1. In Select a template, click **Department**.
1. In Preview and use 'Department' template, click **Use template**.
1. In Give your site a name, under **Site name**, type **IT department**. Under **Site description**, type **External communication site of the IT department for instructions, help, and support**. Under **Site address**, in the drop-down, ensure **../sites/** is selected and, beside, type **IT**. Under **Site owner**, find and click **Lynne Robbins**. Click **Next**.
1. In Set language and other options, under **Select a language**, ensure **English** is selected. Under **Time zone**, select your time zone. Click **Create site**.
1. Repeat from step 6 for the site **Contoso home**. Take the parameters for this site from the table above.

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

1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
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

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://teams.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In the left navigation, click **Teams**.
1. In Teams, at the top, click **+** and click **Create team**.
1. In Create a team, click the link **More create team options**.
1. In Create team, on the left, click **From group**.
1. Under Which Microsoft 365 group do you want to use?, click **OneDrive deployment project** and click **Add Team**.
1. Click to close **Nice work!**.
1. On the left click **Teams**.

    Verify that the OneDrive deployment project is visible as a new team.

### Task 6: Delete a site without a Microsoft 365 group

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Sites**, **Active sites**.
1. In Active sites, select **SharePoint Playground** and click **Delete**.
1. In the Delete SharePoint Playground? panel, click **Delete**.

### Task 7: Delete a Microsoft 365 group-connected site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Sites**, **Active sites**.
1. In Active sites, select **Onedrive deployment project** and click **Delete**.
1. In the Delete SharePoint Playground? panel, click **Delete**.

### Task 8: Restore site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Sites**, **Deleted sites**.
1. In Deleted sites, select **SharePoint Playground** and click **Restore**.
1. Click **Active sites**.

    Verify that SharePoint Playground is listed in Active sites again.

### Task 9: Restore Microsoft 365 group

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
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

## Exercise 2: Manage site admins

1. [Add Joni Sherman as site admin to the site](#task-1-add-a-site-admins-to-a-site) Contoso home
1. [Verify site admin access](#task-2-verify-site-admin-access) by Joni Sherman

### Task 1: Add a site admins to a site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, select **Contoso home** and click **Membership**.
1. On the Contoso home panel, on the **Membership** tab, ensure **Site admins is selected**. Click **Add site admins**.
1. In Add site admins to Contoso home, find and click **Joni Sherman** and click **Add (1)**.
1. Above Add site admins to Contoso home, click the left arrow.

    Verify that Joni Sherman was added to the Site admins.

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

1. [Verify that users can create Microsoft 365 groups](#task-1-verify-that-users-can-create-microsoft-365-groups) using Outlook
1. Limit the users that can create Microsoft 365 groups
1. Verify that users cannot create Microsoft 365 groups
1. Verify that users can create SharePoint sites
1. Change settings for site creation
1. Verify that users cannot create SharePoint sites

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
1. In Microsof Edge, navigate to **https://learn.microsoft.com/en-us/microsoft-365/solutions/manage-creation-of-groups?view=o365-worldwide**
1. On page Manage who can create Microsoft 365 groups, scroll down to the script and click **Copy**. The script is provided for reference here:

    ````powershell
    Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement
    Import-Module Microsoft.Graph.Beta.Groups

    Connect-MgGraph -Scopes "Directory.ReadWrite.All", "Group.Read.All"

    $GroupName = ""
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

    Note: The security group sg-IT was previously created for you.

1. On the menu, click **File**, **Save**.

    Now, you have to wait for the installation of the Microsoft.Graph.Beta module to complete. This can take a few minutes.

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

    Verify that you do not see the New group button anymore.

### Task 4: Verify that users can create SharePoint sites

### Task 5: Change settings for site creation

## Task 6: Verify that users cannot create SharePoint sites

## Exercise 4: Manage storage limits

1. Change the site storage limits to manual
1. Change the storage limits of sites

## Exercise 5: Change a site address

1. Change the address of a site
1. Verify the automatic redirection from the old address to the new address

## Exercise 6: Manage hub sites

1. Register hub sites
1. Register sites with the hub
1. Edit the navigation on the hub site
1. Edit the navigation on the top-level hub

## Exercise 7: Manage the lock state

1. Add a page
1. Configure the unavailablility message
1. Make a site unavailable
1. Verify the user experience for an unavailable site
1. Make a site read-only
1. Verify the user expeirence for a read-only site

## Exercise 8: Replace the root site

1. Replace the root site with the new Contoso home
1. Verify the replacement
