# Lab: Get started with SharePoint administration

## Setup

Sign in to WIN1 as Admin.

All exercises are performed on WIN1.

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

From now on, you can use the user Lynne Robbins for SharePoint administration.

## Exercise 3: Explore cloud file storage

1. Navigate to the **Documents** library on the **Campaigns - Events** team site as **Lynne Robbins**.
1. In the Documents library, open **Contoso Electronics Announces Electronic Events Legal Department Moves.docx** in the Microsoft Word desktop app. Ensure, **Autosave** is **On**. Make a change to the document, e.g., on page 2, apply the style **Quote** to the last paragraph.

    If you are asked to activate Office, sign in using Lynne Robbins.

    Switch to the browser and verify your change is visible. In the browser, make a change to the document, e.g., on page 2, in the first paragraph, change **Seattle** to **Vienna**.

    Switch to the Microsoft Word desktop app and verify your change is visible. Then close Microsoft Word and the browser tab.

1. Verify that the document **Contoso Electronics Announces Electronic Events Legal Department Moves.docx** has several versions. Restore version **2.0** by **Debra Berger** and verify your changes are undone.

    [Managing versions](../General/Managing-versions.md)

1. Delete the document **Divisional Sales Report.docx** and restore it from the recycle bin. Verify that the document is restored.

    [Restoring items from the recycle bin](../General/Restoring-items-from-the-recycle-bin.md)

## Exercise 4: Explore OneDrive

1. As **Lynne Robbins**, access OneDrive.
1. As **Lynne Robbins**, delete all files and folders in OneDrive and restore them using the **Restore your OneDrive** feature.

    [Restoring OneDrive](../General/Restoring-OneDrive.md)

*Note:* The restore feature is also available in SharePoint libraries.

If time allows, install the SharePoint and OneDrive apps on your smartphone, sign in with Lynne Robbins and try to access the files in the SharePoint library and your OneDrive on your smartphone.

## Exercise 5: Explore SharePoint integration with Teams

1. Create a team with the name **SharePoint project** (mail nick name **SharePointProject**) and invite Megan Bowen as member.

    [Creating a team](../General/Creating-a-team.md)

1. In the team SharePoint project, create a standard channel **Planning**.

    [Creating a channel](../General/Creating-a-channel.md)

1. Explore the team associated SharePoint site by opening the tab **Files** in the channel **General** and then clicking **Open in SharePoint** from the ellipsis menu.

    Verify you see two folders with the same name as the team's channels.

1. In the team SharePoint project, create a shared channel with the name **Governance**. Do not share it with team members, but add Patti Fernandez as member.

    [Creating a channel](../General/Creating-a-channel.md)

    If you want, you can share the channel with your personal work or school account.

1. On the team's web site, verify that you do not see a folder for the channel **Governance**, but you see the channel in the documents library under **In channels**.
1. List the sites in your tenant and verify the Membership of the site **SharePoint Project**.

    Verify that Lynne Robbins is in Owner.
    Verify that SharePoint Project members are in Site admins.
    Verify that SharePoint Project members are in Site members.

    Verify, that on the tab **General** under **Channel sites** there is 1 site. View the site and verify that Lynne Robbins is in Site admins and that Lynne Robbins and Patti Fernandez are in Site members.

    [Managing site membership](../General/Managing-site-membership.md)

[figure 1]:/images/Lab-Getting-started-with-SharePoint-administration-exercise-5.png
[figure 2]:/images/microsoft-store-powershell.png
[figure 3]:/images/microsoft-store-windows-terminal.png
