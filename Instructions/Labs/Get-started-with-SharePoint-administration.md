# Lab: Get started with SharePoint administration

## Setup

Sign in to WIN1 as Admin.

## Introduction

As a SharePoint administrator, you have to use PowerShell from time to time. Therefore, you want to prepare your computer by installing PowerShell and the necessary PowerShell modules to administer SharePoint Online. Then, you assign the SharePoint administrator role to your user account, so that you do not have to be signed in as Global administrator all the time.

After you have set the stage for administration, you explore the features of SharePoint cloud file storage including real-time collaboration, version control and the recycle bin. Then you explore OneDrive and a way to restore it.

To manage the SharePoint project, you create a new Team with a new standard and a new shared channel (figure 1). You add members to the team and channels and explore the mapping between Teams channels and SharePoint sites.

![Site structure after exercise 5][figure 1]
Figure 1: Site structure after exercise 5

## Exercises

1. [Get started with PowerShell](#exercise-1-get-started-with-powershell)
1. [Manage the SharePoint Administrator role](#exercise-2-manage-the-sharepoint-administrator-role)
1. [Explore cloud file storage](#exercise-3-explore-cloud-file-storage)
1. [Explore OneDrive](#exercise-4-explore-onedrive)
1. [Explore SharePoint integration with Teams](#exercise-5-explore-sharepoint-integration-with-teams)

## Exercise 1: Get started with PowerShell

Perform all tasks on WIN1.

1. Install WinGet.

    [Installing WinGet](../General/Installing-WinGet.md)

    This task is only necessary, if you plan to install PowerShell and/or Windows Terminal with Windows PowerShell.

1. Install **PowerShell** (app-id: 9MZ1SNWT0N5D)from the Microsoft Store.

    ![figure 2]:/images/microsoft-store-powershell.png
    Figure 2: PowerShell in Microsoft Store

    [Installing Apps from the Microsoft Store](../General/Installing-Apps-from-the-Microsoft-Store.md)

1. Install **Windows Terminal** (app-id: 9N0DX20HK701) from the Microsoft Store.

    ![figure 3]:/images/microsoft-store-windows-terminal.png
    Figure 3: Windows Terminal in Microsoft Store

    [Installing Apps from the Microsoft Store](../General/Installing-Apps-from-the-Microsoft-Store.md)

1. In **PowerShell** Install the module **PnP.PowerShell**.

    [Installing PowerShell modules](../General/Installing-PowerShell-modules.md)

1. In **Windows PowerShell**, install the modules **Microsoft.Online.SharePoint.PowerShell**, **ExchangeOnlineManagement**, **MicrosoftTeams**, and **Microsoft.Graph**.

    [Installing PowerShell modules](../General/Installing-PowerShell-modules.md)

    Installing Microsoft.Graph will take a few minutes. You do not have to wait for the installation to complete. Instead, continue to the next task.

1. In **PowerShell**, import the modules **ExchangeOnlineManagement**, **PnP.PowerShell** and **MicrosoftTeams**. List the commands of each module.

    [Importing PowerShell modules](../General/Importing-PowerShell-modules.md)
    [Getting PowerShell commands](../General/Getting-PowerShell-commands.md)

1. In **Windows PowerShell**, import the modules **ExchangeOnlineManagement**, **Microsoft.Online.SharePoint.PowerShell** and **MicrosoftTeams**. List the commands of each module.

    [Importing PowerShell modules](../General/Importing-PowerShell-modules.md)
    [Getting PowerShell commands](../General/Getting-PowerShell-commands.md)

1. Register an Entra ID App for interactive login with the PnP Powershell.

    [Registering an Entra ID App for interactive login with the PnP Powershell](../General/Registering-an-Entra-ID-App-for-interactive-login-with-the-PnP-PowerShell.md)

1. List the SharePoint sites in your tenant using the PnP PowerShell module and the SharePoint Online module.

    [Getting SharePoint Sites](../General/Getting-SharePoint-Sites.md)

## Exercise 2: Manage the SharePoint administrator role

1. Assign the **SharePoint Administrator** role to **Lynne Robbins**.

    [Assigning an Entra ID role](../General/Assigning-an-Entra-ID-role.md)

1. Verify the **SharePoint Administrator** role holders include **Lynne Robbins**.

1. As **Lynne Robbins**, verify access to the SharePoint admin center by listing the active sites using the Web UI.

    [Getting SharePoint Sites](../General/Getting-SharePoint-Sites.md)

## Exercise 3: Explore cloud file storage

1. [Navigate to the Documents library](#task-1-navigate-to-the-documents-library) on the Campaigns - Events team site
1. [Collaborate on a document in real-time](#task-2-collaborate-on-a-document-in-real-time)
1. [Restore the document to the original version](#task-3-restore-the-document-to-the-original-version)
1. [Delete and restore a document](#task-4-delete-and-restore-a-document)

### Task 1: Navigate to the Documents library

Perform this task on WIN1.

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

Perform this task on WIN1.

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

Perform this task on WIN1.

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

Perform this task on WIN1.

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

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. Navigate to **https://m365.cloud.microsoft.com**.
1. On Login | Microsoft 365, click **Sign in**.
1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.

    On the Microsoft 365 home page, verify that you are signed in with Lynne Robbins. If you are still signed in with MOD Administrator, click your account icon in the top-right corner, and click **Sign out**. Close the tab and repeat this step.

1. In the left-hand navigation, click **Apps**.
1. In Apps, click **OneDrive**.

    Explore the content shown on Home.

1. On the left, click **My files**.

    Explore the content in My files.

Leave Microsoft Edge open for the next task.

### Task 2: Restore OneDrive

Perform this task on WIN1.

1. In My files, select all files and folders, by clicking to the left of the column headers. Click **Delete**.
1. In Delete?, click **Delete**.
1. On the left, click **Recycle bin**.

    Verify the deleted files and folders are in the Recycle bin. You could restore them from here, but we will take a different approach.

1. In the bottom-left, click your user name and click **View acount**.
1. In My Account, in the left navigation, click **My Apps**.
1. In the App dashboard, click **OneDrive**.
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
1. [Explore the shared channel associated SharePoint site](#task-5-explore-the-shared-channel-associated-sharepoint-site)
1. [Explore the team associated SharePoint sites in SharePoint admin center](#task-6-explore-the-team-associated-sharepoint-sites-in-sharepoint-admin-center)

### Task 1: Create a new team

#### Web UI

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. Navigate to **https://teams.microsoft.com**.
1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft Teams, on the left, click **Teams**.
1. In Teams, at the top click **+** and click **Create team**.
1. In Create a team, under Team name, type **SharePoint project**. Ensure the **Team type** to be **Private**. Under Name the first channel, type **General information**. Click **Create**.
1. In Add members to SharePoint project, in Type a name or email, search for and click **Megan Bowen**. Click **Add**.

#### PowerShell

Perform this tasks on WIN1.

1. Open **Terminal**.
1. In Terminal, sign in to Microsoft Teams.

    ````powershell
    Connect-MicrosoftTeams
    `````

1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Create a team with the name **SharePoint project**.

    ````powershell
    New-Team -DisplayName 'SharePoint Project' -MailNickName SharePointProject
    ````

1. Add **Megan Bowen** to the team.

    ````powershell
    Get-Team -DisplayName 'SharePoint Project' |
    Add-TeamUser -User MeganB@\<your tenant\>.onmicrosoft.com
    ````

1. Disconnect from Microsoft Teams.

    ````powershell
    Disconnect-MicrosoftTeams
    ````

### Task 2: Create a standard channel

#### Web UI

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. Navigate to **https://teams.microsoft.com**.
1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft Teams, on the left, click **Teams**.
1. In Teams, at the top click **+** and click **Create channel**.
1. In Create a channel, click **Select a team**.
1. In Pick a team to add new channel to, click **SharePoint project** and click **Done**.
1. In **Create a channel**, under **Channel name**, type **Planning**. Under **Choose a channel type**, select **Standard**. Click **Create**.

#### PowerShell

Perform this taks on WIN1.

1. Open **Terminal**.
1. In Terminal, ensure **PowerShell** is shown at the top. Sign in to Microsoft Teams.

    ````powershell
    Connect-MicrosoftTeams
    `````

1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Create a standard channel with the name **Planning**.

    ````powershell
    Get-Team -DisplayName 'SharePoint Project' |
    New-TeamChannel -DisplayName 'Planning' -MembershipType Standard
    ````

1. Disconnect from Microsoft Teams.

    ````powershell
    Disconnect-MicrosoftTeams
    ````

### Task 3: Explore the team associated SharePoint site

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. Navigate to **https://teams.microsoft.com**.
1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft Teams, on the left, click **Teams**.
1. In Teams, under Sharepoint project, click **General**.
1. In General, click **Files**.
1. In the documents toolbar, click the ellipsis (**...**) and click **Open in SharePoint**.
1. On the SharePoint project team site, in the left navigation, click **Documents**.

    Verify you see two folders with the same name as the team's channels.

### Task 4: Create a shared channel

#### Web UI

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. Navigate to **https://teams.microsoft.com**.
1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft Teams, on the left, click **Teams**.
1. In Teams, at the top click **+** and click **Create channel**.
1. In Create a channel, click **Select a team**.
1. In Pick a team to add new channel to, click **SharePoint project** and click **Done**.
1. In **Create a channel**, under **Channel name**, type **Governance**. Under **Choose a channel type**, select **Shared**. Deactivate **Share this channel with everyone on the team** and click **Create**.
1. In Share the Governance channel, in **Type a name or email**, finde and click **Patti Fernandez**. Click **Share**.

If you want, you can try to add your personal work or school account to the shared channel.

#### PowerShell

Perform this task on WIN1.

1. Open **Terminal**.
1. In Terminal, ensure **PowerShell** is shown at the top. Sign in to Microsoft Teams.

    ````powershell
    Connect-MicrosoftTeams
    `````

1. In Microsoft Edge, sign in as **LynneR@\<your tenant\>.onmicrosoft.com*.
1. Close **Microsoft Edge** and return to **Terminal**.
1. In the team **SharePoint Project**, create a new shared channel **Governance**.

    ````powershell
    Get-Team -DisplayName 'SharePoint Project' |
    New-TeamChannel -DisplayName 'Governance' -MembershipType Shared
    ````

1. Add **Patti Fernandez** to the shared channel.

    ````powershell
    Get-Team -DisplayName 'SharePoint Project' |
    Add-TeamChannelUser `
        -DisplayName 'Governance' -User PattiF@\<your tenant\>.onmicrosoft.com
    ````

    If you want, you can repeat this step and try to add your personal work or school account to the shared channel.

1. Disconnect from Microsoft Teams.

    ````powershell
    Disconnect-MicrosoftTeams
    ````

### Task 5: Explore the shared channel associated SharePoint site

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. Navigate to **https://teams.microsoft.com**.
1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft Teams, on the left, click **Teams**.
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

Perform this task on WIN1.

#### Web UI

1. Open **Microsoft Edge**.
1. Navigate to **https://admin.microsoft.com**.
1. Sign using **LynneR@\<your tenant\>.onmicrosoft.com**. The password is the same as the global administrator.
1. In Microsoft 365 admin center, in the left navigation, click **Show all** and click **SharePoint**.
1. In Sharepoint admin center, click **Sites** and **Active sites**.
1. In Active sites, click **SharePoint Project**.
1. In the SharePoint Project panel, click the tab **Membership**.

    Verify that Lynne Robbins is in Owners.

1. On the tab Membership, click **Members**.

    Verify Lynne Robbins and Megan Bowen are in Members.

1. Click **Site admins**.

    Verify that SharePoint Project Owners are Site admins.

1. Click **Site members**.

    Verify that SharePoint Project members are Site members.

1. Click the tab **General**.
1. On the tab General, under Channel sites, verify that there is 1 site. Click **View**.
1. Select **SharePoint Project-Governance** and click **Edit**.
1. On the SharePoint Project-Governance panel, click the tab **Membership**.

    Verify that Lynne Robbins is in Site admins.

1. Click **Site members**.

    Verify that Lynne Robbins and Patti Fernandez are Site members.

1. Close the SharePoint Project-Governance panel.

#### PowerShell

1. Open **Terminal**.
1. In Terminal, ensure **PowerShell** is shown at the top. Sign in to SharePoint.

    ````powershell
    # Replace the URL with the URL you copied before
    Connect-PnPOnline -Url https://wwlx421595-admin.sharepoint.com/ -Interactive
    ````

1. Sign using **LynneR@\<your tenant\>.onmicrosoft.com**. The password is the same as the global administrator.
1. List the sites with their title and url.

    ````powershell
    Get-PnPTenantSite | Select-Object Title, Url
    ````

1. List the members of the Microsoft 365 group **SharePoint Project** with their id, principal name, display name, and user type.

    ````powershell
    Get-PnPMicrosoft365Group -Identity 'SharePoint Project' |
    Get-PnPMicrosoft365GroupMembers |
    Select-Object Id, UserPrincipalName, DisplayName, UserType
    ````

1. Store the url of the **SharePoint Project** site in a variable.

    ````powershell
    $site = Get-PnPTenantSite |
        Where-Object { $PSItem.Title -eq 'SharePoint Project' } |
        Select-Object -ExpandProperty Url
    `````

1. Retrieve the site groups of the **SharePoint Project site**.

    ````powershell
    Get-PnPSiteGroup -Site $site
    ````

    Note the ids in the property **Users**.

1. Retrieve the Microsoft 365 group **SharePoint Project**

    ````powershell
    Get-PnPMicrosoft365Group -Identity 'SharePoint Project'
    ````

    Compare the id of the group with the ids you noted in the previous step. They should be identical, but the owners group has an _o suffix.

1. Disconnect from SharePoint.

    ````powershell
    Disconnect-PnPOnline
    `````

[figure 1]:/images/Lab-Getting-started-with-SharePoint-administration-exercise-5.png
[figure 2]:/images/microsoft-store-powershell.png
[figure 3]:/images/microsoft-store-windows-terminal.png
