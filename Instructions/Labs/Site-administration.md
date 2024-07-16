# Lab: Site administration

## Setup

Students must have finished the following practices before starting this lab:

1. [Install Visual Studio Code](../Practices/Install-Visual-Studio-Code.md)
1. [Install Microsoft Graph Beta PowerShell module](../Practices/Install-Microsoft-Graph-Beta-PowerShell-module.md)

On LON-CL1, sign in as Administrator.

## Introduction

To support various projects you want to create team sites for the SharePoint and the OneDrive deployment project, as well as for the IT department. You want to test the upgrade of a site to a Microsoft 365 group and add Teams functionality. Moreover, you want to test the restore functionality of sites and Microsoft 365 group.  Furthermore, you want to create communication sites for the IT department and a new home site for Contoso. You want to grant Joni Sherman site admins permissions to the new home site.

Your management asks you to limit the creation of Microsoft 365 groups and SharePoint sites to members of the IT department. Futhermore, new team sites should be created under the /teams/ URL and should have your time zone as default.

Your company wants to manage site storage limits manually. All existing sites should be limited to 1 GB by default.

The address of a site needs to be changed to a more convenient URL. Users should be redirected from the old URL to the new.

After the design of the new home site is finished, your company wants you to replace to unused generic root site with the new site. As a next step, your company wants to introduce hubs to have a common navigation between sites.

As site created by a user should be made unavailable. Furthermore, the site of a cancelled project should be made read-only.

## Exercises

1. [Manage sites](#exercise-1-manage-sites)
1. [Manage site admins](#exercise-2-manage-site-admins)
1. [Manage site creation](#exercise-3-manage-site-creation)
1. [Manage storage limits](#exercise-4-manage-storage-limits)
1. [Change a site address](#exercise-5-change-a-site-address)
1. [Replace the root site](#exercise-6-replace-the-root-site)
1. [Manage hub sites](#exercise-7-manage-hub-sites)
1. [Manage lock states](#exercise-8-manage-lock-states)

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
1. [Limit the users that can create Microsoft 365 groups](#task-2-limit-the-users-that-can-create-microsoft-365-groups) to members the security group sg-IT
1. [Verify that users cannot create Microsoft 365 groups](#task-3-verify-that-users-cannot-create-microsoft-365-groups)
1. [Verify that users can create SharePoint sites](#task-4-verify-that-users-can-create-sharepoint-sites)
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

    After a few moments, you will be redirected to the new team site. Note, that this is a team site without a Microsoft 365 group, since we disable the Microsoft 365 group creation for users before. If Microsoft 365 group creation is allowed, the same process looks a little different and a Microsoft 365 group would be created.

### Task 5: Change settings for site creation

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Settings**.
1. In Settings, click **Site creation**.
1. In Site creation, deactivate **Users can create SharePoint sites**. Under **Create team sites under**, in the drop-down, select **/teams/**. Under **Default time zone**, select your time zone. Click **Save**.

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
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Settings**.
1. In Settings, click **Site storage limits**.
1. In the Site storage limits panel, click **Manual** and click **Save**.

### Task 2: Change the storage limits of sites

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, select **IT department**.
1. On the toolbar, click Storage. You might have to click the ellipsis (**...***) to see this command.
1. On the Edit storage limit panel, under **Maximum storage for this site**, type **1** and click **Save**.
1. Close the **Edit storage limit** panel.

Repeat from step 6 for other sites. For bulk changes of storage limits, PowerShell is much more effective.

## Exercise 5: Change a site address

1. [Change the address of site](#task-1-change-the-address-of-a-site) SharePoint Project from SharePointproject to SharePoint-project
1. [Verify automatic redirection](#task-2-verify-automatic-redirection) from the old address to the new address

### Task 1: Change the address of a site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, click **SharePoint project**.
1. In the IT help desk panel, on the tab General, under **Site address**, click **Edit**.
1. In Edit SharePoint site address, under **SharePoint site address**, type **SharePoint-project** and click **Save**.
1. In the message box Change site name?, click **No**.
1. Close the panel.

### Task 2: Verify automatic redirection

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/SharePointProject** (the old URL).
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.

Verify that you are redirected to the new URL.

## Exercise 6: Replace the root site

1. [Explore the current root site](#task-1-explore-the-current-root-site)
1. [Replace the root site](#task-2-replace-the-root-site) with the new Contoso home
1. [Verify the new root site](#task-3-verify-the-new-root-site)

### Task 1: Explore the current root site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.

    You should see a generic communication site. You may explore the site further.

### Task 2: Replace the root site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, select **Communication site** with the root URL. On the toolbar click **Manage home site** (you may have to click the ellipsis to see this command).
1. In the Home site panel, under **Current home site**, beside the current home site, click the **X** icon to remove it as home site. Click **Save**.
1. In **Active Sites**, in the row of site **Contoso home**, in the column **URL**, in the context-menu of the URL, click **Copy link**.
1. Select **Communication site** with the root URL. On the toolbar click **Replace site** (you may have to click the ellipsis to see this command).
1. In the panel Replace root site, under **URL of the site you want to use**, paste the copied URL of Contoso home. Click **Save**.

    Wait for the action to complete. This may take a minute or two.

### Task 3: Verify the new root site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.

    You should see a site using the organization home template with the name Contoso home.

## Exercise 7: Manage hub sites

1. [Register sites as hub sites](#task-1-register-sites-as-hub-sites)

    * Contoso home
    * IT department
    * Executive corner
    * HR

1. [Associate sites with the hub](#task-2-associate-sites-with-the-hub) IT department:

    * IT department internal
    * IT help desk
    * OneDrive deployment project
    * SharePoint project

1. [Associate hubs with the parent hub](#task-3-associate-hubs-with-a-parent-hub) Contoso home:

    * IT department
    * Executive corner
    * HR

1. [Edit the navigation on the top-level hub](#task-4-edit-the-navigation-on-the-top-level-hub) by adding all associated hubs under the display name Hubs.
1. [Edit the navigation on the hub site](#task-5-edit-the-navigation-on-the-hub-site) following the structure below:

    * Groups and Teams (label)
        * IT internal (link to site)
        * IT help desk (link to site)
    * Projects (label)
        * OneDrive deployment project (link to site)
        * SharePoint project (link to site)
    * Hubs (associated child hubs)

### Task 1: Register sites as hub sites

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In active sites, select **Contoso home** and click **Hub**, **Register as hub site**.
1. In the Register as hub site panel, accept the defaults and click **Save**.
1. Close the panel.
1. Repat steps 6 - 8 for the site **IT department**.
1. In active sites, select **Executive Corner** and click **Hub**, **Change hub association**.
1. In the panel Edit hub association, under **Select a hub**, select **None** and click **Save**.
1. Close the panel.
1. With Executive corner still selected, click **Hub**, **Register as hub site**.
1. In the Register as hub site panel, accept the defaults and click **Save**.
1. Close the panel.
1. Repeat steps 10 - 15 for the site HR.

### Task 2: Associate sites with the hub

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, select **IT department internal**, **IT help desk**, **OneDrive deployment project**, and **SharePoint project**. click **Bulk edit**, **Hub association**.
1. In the panel Edit hub association, under **Select a hub**, select **IT department** and click **Save**.

### Task 3: Associate hubs with a parent hub

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, select **HR** and click **Hub**, **Edit hub site settings**.
1. In the panel Hub site settings, under **Parent hub association**, select **Contoso home** and click **Save**.
1. Close the panel.
1. Repeat steps 6 - 8 for **Executive corner** and **HR**.

### Task 4: Edit the navigation on the top-level hub

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In active site, beside **Contoso home**, click the URL.
1. On the site Contoso home, in the hub navigation bar, click **Add link**.
1. In the Add panel, under **Choose an option**, select **Associated hubs**. Under Display name, type **Hubs** and click **OK**.
1. In the Edit hub navigation panel, click **Save**.

### Task 5: Edit the navigation on the hub site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In active site, beside **IT department**, click the URL.
1. On the page IT department, in the hub navigation bar, click **Add link**.
1. In the Add panel, under **Choose an option**, select **Label**. Under Display name, type **Groups and teams** and click **OK**.
1. In the Edit hub navigation panel, hover the mouse just under the **Group and teams** and click the **+**.
1. In the Add panel, under **Choose an option**, select **Label**. Under Display name, type **Projects** and click **OK**.
1. In the Edit hub navigation panel, hover the mouse just under the **Group and teams** and click the **+**.
1. In the Add panel, under **Choose an option**, ensure **Link** is selected. Under Address, type **/sites/IT-internal**.  Under Display name, type **IT internal** and click **OK**.
1. In the Edit hub navigation panel, to the right of **IT internal**, click the ellipsis and click **Make sub link**.
1. In the Edit hub navigation panel, hover the mouse just under the **IT internal** and click the **+**.
1. In the Add panel, under **Choose an option**, ensure **Link** is selected. Under Address, type **/sites/IT-helpdesk**.  Under Display name, type **IT help desk** and click **OK**.
1. In the Edit hub navigation panel, hover the mouse just under the **Projects** and click the **+**.
1. In the Add panel, under **Choose an option**, ensure **Link** is selected. Under Address, type **/sites/Project1Drive**.  Under Display name, type **OneDrive deployment project** and click **OK**.
1. In the Edit hub navigation panel, to the right of **OneDrive deployment project**, click the ellipsis and click **Make sub link**.
1. In the Edit hub navigation panel, hover the mouse just under the **OneDrive deployment project** and click the **+**.
1. In the Add panel, under **Choose an option**, ensure **Link** is selected. Under Address, type **/sites/SharePoint-project**.  Under Display name, type **SharePoint project** and click **OK**.
1. In the Edit hub navigation panel, hover the mouse just under the **SharePoint project** and click the **+**.
1. In the Add panel, under **Choose an option**, select **Associated child hubs**. Under Display name, type **Hubs** and click **OK**.
1. In the Edit hub navigation panel, to the right of **Hubs**, click the ellipsis and click **Promote sub link**.
1. In the Edit hub navigation panel, click **Save**.

## Exercise 8: Manage lock states

1. [Add a page](#task-1-add-a-page) to the site Contoso home telling users that the content of the site is unavaible.
1. [Set the tenant's unavailability page](#task-2-set-the-tenants-unavailability-page) to the page you just created
1. [Make a site unavailable](#task-3-make-a-site-unavailable): Joni's group
1. [Verify the user experience for an unavailable site](#task-4-verify-the-user-experience-for-an-unavailable-site)
1. [Make a site read-only](#task-5-make-a-site-read-only): OneDrive deployment project
1. [Verify the user experience for a read-only site](#task-6-verify-the-user-experience-for-a-read-only-site)

### Task 1: Add a page

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In active site, beside **Contoso home**, click the URL.
1. On the site Contoso home, click **New**, **Page**.
1. On Welcome!, click **I've done this before** and **Let's go**.
1. On Page templates, click **Blank** and click **Create page**.
1. On the new page, click in **Add a title**, type **Sorry, this site is currently not avaiable**.
1. In **Add your text here.**, type **An administrator made this site unavailable, because the site need maintenance or the content is outdated. Don't worry! The content is not lost and the site may be available later again.**.
1. Turn **Comments** **Off**.
1. Click the full-width banner above the title. A floating toolbar appears. In the toolbar, click the icon *Browse images*.
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

1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
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

1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
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
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.

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

1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
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
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.

    You should see a warning message at the top of the page telling you that this site is read-only at the administrator's request. Verify that you cannot add or change any content.
