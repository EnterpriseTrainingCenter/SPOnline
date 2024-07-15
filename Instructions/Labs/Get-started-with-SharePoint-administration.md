# Lab: Get started with SharePoint

## Setup

1. Sign in to LON-CL1 as Administrator.
1. Open **Microsoft Edge**.
1. Navigate to **https://www.microsoft365.com**.
1. On Login | Microsoft 365, click **Sign in**.
1. Sign in using your Office 365 Tenant Credentials for the Global Admin.
1. On Home | Microsoft 365, in the top-right corner, click **Install and more** and **Install Microsoft 365 apps**.
1. On Apps & devices, under Office, under Language, ensure **English (United States)** is selected. Under Version, ensure **64-bit** is selected. Click **Intall Office**.
1. In Downloads, open **OfficeSetup.exe**.

The Microsoft 365 Apps for Enterprise will be installed. This will take a few minutes.

## Introduction

As a SharePoint administrator, you have to use PowerShell from time to time. Therefore, you want to prepare your computer by installing PowerShell and the necessary PowerShell modules to administer SharePoint Online. Then, you assign the SharePoint administrator role to your user account, so that you do not have to be signed in as Global administrator all the time.

After you have set the stage for administration, you explore the features of SharePoint cloud file storage including real-time collaboration, version control and the recycle bin. Then you explore OneDrive and a way to restore it.

To manage the SharePoint project, you create a new Team with a new standard and a new shared channel. You add members to the team and channels and explore the mapping between Teams channels and SharePoint sites.

## Exercises

1. [Get started with PowerShell](#exercise-1-get-started-with-powershell)
1. [Manage the SharePoint Administrator role](#exercise-2-manage-the-sharepoint-administrator-role)
1. [Explore cloud file storage](#exercise-3-explore-cloud-file-storage)
1. [Explore OneDrive](#exercise-4-explore-onedrive)
1. [Explore SharePoint integration with Teams](#exercise-5-explore-sharepoint-integration-with-teams)

## Exercise 1: Get started with PowerShell

1. [Install PowerShell](#task-1-install-powershell)
1. [Install Windows Terminal](#task-2-install-windows-terminal)
1. [Install PowerShell modules](#task-3-install-powershell-modules) PnP.PowerShell, MicrosoftTeams, Microsoft.Graph, and Microsoft.Online.SharePoint.PowerShell
1. [Verify the functionality of the PowerShell modules](#task-4-verify-the-functionality-of-the-powershell-modules)

### Task 1: Install PowerShell

Perform this task on LON-CL1.

1. Open the **Microsoft Store**.

    Microsoft Store may need an update. This can take a minute or two.

1. In Microsoft Store, search for **PowerShell**.
1. In the search results, click **PowerShell**.
1. In PowerShell, ensure, it is from **Microsoft Corporation** and click **Get**.

### Task 2: Install Windows Terminal

Perform this task on LON-CL1.

1. Open the **Microsoft Store**.
1. In Microsoft Store, search for **Windows Terminal**.
1. In the search results, click **Windows Terminal**.
1. In Windows Terminal, ensure, it is from **Microsoft Corporation** and click **Get**.

Wait for PowerShelll and Windows Terminal to finish installing. You can close the Microsoft Store now.

### Task 3: Install PowerShell modules

Perform this task on LON-CL1.

1. Run **Terminal** as Administrator.
1. In Terminal, ensure **PowerShell 7.x.y** is shown at the top. Install the Microsoft 365 Patterns and Practices PowerShell Cmdlets.

    ````powershell
    Install-Module -Name PnP.PowerShell
    ````

1. On the message Untrusted repository, enter **y**.
1. Install the Microsoft Teams cmdlets module.

    ````powershell
    Install-Module -Name MicrosoftTeams
    ````

1. On the message Untrusted repository, enter **y**.
1. Install the Microsoft Graph module.

    ````powershell
    Install-Module -Name Microsoft.Graph
    ````

1. On the message Untrusted repository, enter **y**.

    This will take a minute or two. You do not have to wait for the installation to complete. Instead, continue to the next step.

1. In Terminal, click the down chevron and **Windows PowerShell**.
1. Ensure **Windows Powershell** is shown at the top. Install the Microsoft SharePoint Onine Services Module.

    ````powershell
    Install-Module -Name Microsoft.Online.SharePoint.PowerShell
    ````

1. On the message Untrusted repository, enter **y**.

### Task 4: Verify the functionality of the PowerShell modules

Perform this task on LON-CL1.

1. Open **Terminal**.
1. In Terminal, ensure **PowerShell 7.x.y** is shown at the top. List the commands of the module PnP.PowerShell.

    ````powershell
    Get-Command -Module PnP.PowerShell
    ````

1. List the commands of the module MicrosoftTeams.

    ````powershell
    Get-Command -Module MicrosoftTeams
    ````

1. List the commands of the module Microsoft.Graph.

    ````powershell
    Get-Command -Module Microsoft.Graph.Users
    ````

1. In Terminal, click the down chevron and **Windows PowerShell**.
1. Ensure **Windows Powershell** is shown at the top. List the commands of the module Microsoft.Online.SharePoint.PowerShell.

    ````powershell
    Get-Command -Module Microsoft.Online.SharePoint.PowerShell
    ````

1. Open **Microsoft Edge**.
1. Navigate to **https://admin.microsoft.com**.
1. Sign in using your Office 365 Tenant Credentials for the Global Admin.
1. In Microsoft 365 admin center, in the left navigation, click **Show all** and click **SharePoint**.
1. In SharePoint admin center, copy the URL left to the third slash, e.g., *https://wwlx421595-admin.sharepoint.com* and paste it, e.g. in Notepad.
1. Switch to **Terminal**.
1. Click the tab **Administrator: PowerShell**.
1. Sign in to SharePoint using the PnP PowerShell module.

    ````powershell
    # Replace the URL with the URL you copied before
    Connect-PnPOnline -Url https://wwlx421595-admin.sharepoint.com/ -Interactive
    ````

1. Sign in using your Office 365 Tenant Credentials for the Global Admin.
1. In Permissions requested, click **Accept**.
1. In **Terminal**, list the sites in the tenant.

    ````powershell
    Get-PnPTenantSite
    ````

1. Sign out from SharePoint.

    ````powershell
    Disconnect-PnpOnline
    ````

1. In Terminal, click the tab **Administrator: Windows PowerShell**.
1. Sign in to SharePoint using SharePoint Online module.

    ````powershell
    # Replace the URL with the URL you copied before
    Connect-SPOService -Url https://wwlx421595-admin.sharepoint.com
    ````

1. Sign in using your Office 365 Tenant Credentials for the Global Admin.
1. List the sites in the tenant.

    ````powershell
    Get-SPOSite
    ````

1. Sign out from SharePoint.

    ````powershell
    Disconnect-SPOService
    ````

## Exercise 2: Manage the SharePoint administrator role

1. [Assign the SharePoint Administrator role](#task-1-assign-the-sharepoint-administrator-role) to Lynne Robbins
1. [Verify the SharePoint Administrator role holders](#task-2-verify-the-sharepoint-administrator-role-holders) include Lynne Robbins
1. [Verify access to the SharePoint admin center](#task-3-verify-access-to-the-sharepoint-admin-center) as Lynne Robbins

### Task 1: Assign the SharePoint Administrator role

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. Navigate to **https://admin.microsoft.com**.
1. Sign in using your Office 365 Tenant Credentials for the Global Admin.
1. In the Microsoft 365 admin center, in the left navigation, click **Users** and **Active users**.
1. In Active users, click **Lynne Robbins**.
1. On the panel Lynne Robbins, on the tab Account, under Roles, click **Manage roles**.
1. In Manage admin roles, click **Admin center access** and **SharePoint Administrator**. Click **Save changes**.
1. Close the panel **Manage admin roles**.

### Task 2: Verify the SharePoint Administrator role holders

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. Navigate to **https://admin.microsoft.com**.
1. Sign in using your Office 365 Tenant Credentials for the Global Admin.
1. In the Microsoft 365 admin center, in the left navigation, click **Show all**, **Roles** and **Role assignments**.
1. In Role assignments, on the tab Microsoft Entra ID, click **SharePoint Administrator**.
1. In the panel SharePoint Administrator, click the tab **Assigned**.

    Verify that Lynne Robbins is has the SharePoint Administrator role assigned.

1. Close the SharePoint Administrator panel.

### Task 3: Verify access to the SharePoint admin center

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. Navigate to **https://admin.microsoft.com**.

    If you are signed in as MOD Administrator, click your account icon in the top-right corner, and click **Sign out**. Then close Microsoft Edge and start the task again.

1. Sign using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, in the left navigation, click **Show all** and click **SharePoint**.

    In SharePoint admin center, verify that you are signed in with Lynne Robbins. If you are still signed in with MOD Administrator, click your account icon in the top-right corner, and click **Sign out**. Close the tab and repeat this step.

1. In Sharepoint admin center, click **Sites** and **Active sites**.

    You should see a list of sites.

## Exercise 3: Explore cloud file storage

1. [Navigate to the Documents library](#task-1-navigate-to-the-documents-library) on the Compaigns - Events team site
1. [Collaborate on a document in real-time](#task-2-collaborate-on-a-document-in-real-time)
1. [Restore the document to the original version](#task-3-restore-the-document-to-the-original-version)
1. [Delete and restore a document](#task-4-delete-and-restore-a-document)

### Task 1: Navigate to the Documents library

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. Navigate to **https://www.microsoft365.com**.
1. On Login | Microsoft 365, click **Sign in**.
1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.

    On the Microsoft 365 home page, verify that you are signed in with Lynne Robbins. If you are still signed in with MOD Administrator, click your account icon in the top-right corner, and click **Sign out**. Close the tab and repeat this step.

1. Click the app launcher and click **SharePoint**.
1. On the SharePoint start page, click **Campaigns - Events**.
1. In Campaigns - Events, click **Documents**.

Leave Microsoft Edge open for the next task.

### Task 2: Collaborate on a document in real-time

Perform this task on LON-CL1.

1. In Documents, click **Contoso Electroncs Announces Electronic Events Legal Department Moves.docx**.
1. In Contoso Electroncs Announces Electronic Events Legal Department Moves.docx, in the top-right corner, click **Editing** and **Open in Desktop**.

    Wait for Microsoft Word to open.

1. In Microsoft Word, sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Stay signed in to all your apps, click **OK**.
1. In You're all set!, click **Done**.
1. In Sign in to get started with Word, click **Sign in or create account**.
1. In Activate Office, sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Accept the license agreement, click **Accept**.
1. In Your privacy matters, click **Close**.
1. You should see the document. On the top-left, ensure **Autosave** is **On**.
1. Make a change to the document, e.g., on page 2, apply the style **Quote** to the last paragraph.
1. Switch to **Microsoft Edge**.
1. In Microsoft Edge, in All done. You can close this file now., click **Continue here**. Verify your change is visible.
1. Make a change to the document, e.g., on page 2, in the first paragraph, change **Seattle** to **Vienna**.
1. Switch to **Microsoft Word**.

    Verify your change is visible.

1. Close **Microsoft Word**.
1. Switch to **Microsoft Edge**.
1. Close the tab **Contoso Electroncs Announces Electronic Events Legal Department Moves.docx**.

Leave Microsoft Edge open for the next task.

### Task 3: Restore the document to the original version

Perform this task on LON-CL1.

1. In Campaigns - Events - Documents, select **Contoso Electroncs Announces Electronic Event Legal Department Move.docx**. On the toolbar, click the ellipsis (**...**) and click **Version history**.

    You should see several versions including your recent changes.

1. Hover the mouse over the date and time beside version **2.0** by **Debra Berger**, click the down chevron, and click **Restore**.
1. In the mesage box You are about to replace the current version with the selected version, click **OK**.
1. Close **Version history**.
1. Click **Contoso Electroncs Announces Electronic Event Legal Department Move.docx**.

    Verify you changes are undone.

1. Close the tab **Contoso Electroncs Announces Electronic Event Legal Department Move.docx**.

Leave Microsoft Edge open for the next task.

### Task 4: Delete and restore a document

Perform this task on LON-CL1.

1. Select **Divisional Sales Report.docx** and, on the tool bar, click **Delete**. You may have to click the ellipsis (**...**) for the Delete command to show.
1. In the Microsoft 365 bar, click the *Settings* icon (the gear icon) and click **Site contents**.
1. In Contents, take a moment to review the site contents. Then, in the top-right, click **Recycle bin (1)**.
1. Click **Divisional Sales Report.docx** and click **Restore**.
1. In the left navigation, click **Documents**.

    Verify that Divisional Sales Report.docx was restored.

## Exercise 4: Explore OneDrive

1. [Explore OneDrive](#task-1-explore-onedrive)
1. [Restore OneDrive](#task-2-restore-onedrive)

### Task 1: Explore OneDrive

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. Navigate to **https://www.microsoft365.com**.
1. On Login | Microsoft 365, click **Sign in**.
1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.

    On the Microsoft 365 home page, verify that you are signed in with Lynne Robbins. If you are still signed in with MOD Administrator, click your account icon in the top-right corner, and click **Sign out**. Close the tab and repeat this step.

1. Click the app launcher and click **OneDrive**.
1. On the Microsoft 365 home page, on the left, click **OneDrive**.

    Explore the content shown on Home.

1. On the left, click **My files**.

    Explore the content in My files.

Leave Microsoft Edge open for the next task.

### Task 2: Restore OneDrive

Perform this task on LON-CL1.

1. In My files, select all files and folders, by clicking to the left of the column headers. Click **Delete**.
1. In Delete?, click **Delete**.
1. On the left, click **Recycle bin**.

    Verify the deleted files and folders are in the Recycle bin. You could restore them from here, but we will take a different approach.

1. In the top-right corner, click the *Settings* icon (the gear icon), and click **Restore your OneDrive**.
1. In Restore your OneDrive, under **Select a date**, select **Yesterday**.

    You see all the changes you applied to your OneDrive since Yesterday. The last change is on the top, the first change at the bottom.

1. Select your first change at the bottom and click **Restore**.
1. In Are you sure you want to restore your OneDrive?, click **Restore**.

    Wait for the restore to complete. This will take a minute or two.

1. Click **Return to your OneDrive**.

    Verify the file were restored. The folders were not restored, because the were empty. If you want to restore them, go to the recycle bin and restore them from there.

*Note:* The restore feature is also available in SharePoint libraries.

If time allows, install the SharePoint and OneDrive apps on your smartphone, sign in with Lynne Robbins and try to access the files in the SharePoint library and your OneDrive on your smartphone.

## Exercise 5: Explore SharePoint integration with Teams

1. [Create a new team](#task-1-create-a-new-team) with the name SharePoint project and invite Megan Bowen as member.
1. [Create a standard channel](#task-2-create-a-standard-channel) in the new team with the name Planning
1. [Explore the team associated SharePoint site](#task-3-explore-the-team-associated-sharepoint-site)
1. [Create a shared channel](#task-4-create-a-shared-channel) with the name Governance. Do not share it with team members, but add Patti Fernandez as member.
1. [Explore the private channel associated SharePoint site](#task-5-explore-the-private-channel-associated-sharepoint-site)
1. [Explore the team associated SharePoint sites in SharePoint admin center](#task-6-explore-the-team-associated-sharepoint-sites-in-sharepoint-admin-center)

### Task 1: Create a new team

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. Navigate to **https://teams.microsoft.com**.
1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft Teams, on the left, click **Teams**.
1. In Teams, at the top click **+** and click **Create team**.
1. In Create a team, under Team name, type **SharePoint project**. Ensure the **Team type** to be **Private**. Click **Create**.
1. In Add members to SharePoint project, in Type a name or email, search for and click **Megan Bowen**. Click **Add**.

Leave Microsoft Edge open for the next task.

### Task 2: Create a standard channel

Perform this task on LON-CL1.

1. In Teams, at the top click **+** and click **Create channel**.
1. In Create a channel, click **Select a team**.
1. In Pick a team to add new channel to, click **SharePoint project** and click **Done**.
1. In **Create a channel**, under **Channel name**, type **Planning**. Under **Choose a channel type**, select **Standard**. Click **Create**.

Leave Microsoft Edge open for the next task.

### Task 3: Explore the team associated SharePoint site

Perform this task on LON-CL1.

1. In Teams, under Sharepoint project, click **General**.
1. In General, click **Files**.
1. In the documents toolbar, click the ellipsis (**...**) and click **Open in SharePoint**.
1. On the SharePoint project team site, in the left navigation, click **Documents**.

    Verify you see two folders with the same name as the team's channels.

Leave Microsoft Edge and all tabs open for the next task.

### Task 4: Create a shared channel

Perform this task on LON-CL1.

1. In Microsoft Edge, click the **Teams and Channels | SharePoint project/General | Microsoft Teams** tab.
1. In Teams, at the top click **+** and click **Create channel**.
1. In Create a channel, click **Select a team**.
1. In Pick a team to add new channel to, click **SharePoint project** and click **Done**.
1. In **Create a channel**, under **Channel name**, type **Govenance**. Under **Choose a channel type**, select **Shared**. Deactivate **Share this channel with everyone on the team** and click **Create**.
1. In Share the Governance channel, in **Type a name or email**, finde and click **Patti Fernandez**. Click **Share**.

Leave Microsoft Edge and all tabs open for the next task.

### Task 5: Explore the private channel associated SharePoint site

Perform this task on LON-CL1.

1. In Teams, under Sharepoint project, click **Governance**.
1. In General, click **Files**.
1. In the documents toolbar, click the ellipsis (**...**) and click **Open in SharePoint**.

    Notice that you are in the Documents library and there are no subfolders.

1. Click the **SharePoint project - Documents** tab.
1. In Microsoft Edge, click the *Refresh* button.
1. On the left, click **Documents**.

    Notice that you do not see a Governance folder.

1. Expand **In channels**.

    Verify you see all channels including the Governance channel.

### Task 6: Explore the team associated SharePoint sites in SharePoint admin center

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. Navigate to **https://admin.microsoft.com**.
1. Sign using **LynneR@\<your tenant\>.onmicrosoft.com**. The password is the same as the global administrator.
1. In Microsoft 365 admin center, in the left navigation, click **Show all** and click **SharePoint**.
1. In Sharepoint admin center, click **Sites** and **Active sites**.
1. In Active sites, click **SharePoint project**.
1. In the SharePoint project panel, click the tab **Membership**.

    Verify that Lynne Robbins is in Owners.

1. On the tab Membership, click **Members**.

    Verify Lynne Robbins and Megan Bowen are in Members.

1. Click **Site admins**.

    Verify that SharePoint project Owners are Site admins.

1. Click **Site members**.

    Verify that SharePoint project members are Site members.

1. Click the tab **General**.
1. On the tab General, under Channel sites, verify that there is 1 site. Click **View**.
1. Select **SharePoint project-Governance** and click **Edit**.
1. On the SharePoint project-Governance panel, click the tab **Membership**.

    Verify that Lynne Robbins is in Site admins.

1. Click **Site members**.

    Verify that Lynne Robbins and Patti Fernandez are Site members.

1. Close the SharePoint project-Governance panel.