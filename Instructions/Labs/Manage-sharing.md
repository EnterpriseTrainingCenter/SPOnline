# Lab: Manage sharing

## Setup

On **WIN1**, sign in as **Administrator**.

If you skipped Lab [Get started with SharePoint administration](/Instructions/Labs/Get-started-with-SharePoint-administration.md), in **PowerShell** or **Windows PowerShell**, execute **C:\LabResources\Solutions\Start-SharePointAndTeamsConfiguration.ps1**. If you are asked to sign in, use the global administrator credentials of your tenant.

Moreover, you need additional email accounts for this lab. Ideally, you have two accounts. One is a personal Microsoft or Entra account. The other must not be a Microsoft or Entra account, like a Gmail or GMX account. Consider creating a Microsoft and a Gmail account for this lab, if you do not have access to one of them.

## Introduction

After you configured the sharing settings for Contoso, you want to evaluate the sharing experiences. Furthermore, you want to run a report on shared content, remove sharing links and guest users.

## Exercises

1. [Share content](#exercise-1-share-content)
1. [Manage shared content](#exercise-2-manage-shared-content)

## Exercise 1: Share content

1. [Verify the sharing options of site](#task-1-verify-the-sharing-options-in-a-site) Mark 8 Project Team by trying to share a file with anyone
1. [Modify the sharing settings of sites](#task-2-modify-the-sharing-settings-of-sites) Mark 8 Project Team and Brand to allow sharing with anyone
1. [Share content using anyone link](#task-3-share-content-using-an-anyone-link): Compaign Sales Data.xlsx in Documents of Mark 8 Project Team
1. [Share the folder Design in Mark 8 Project Team using an authenticating link](#task-4-share-a-folder-with-an-authenticating-link) with your personal email (preferrably a Microsoft or Entra account) with edit permissions
1. [Share the site](#task-5-share-a-site) Brand with your personal email (peferrably a non-Microsoft or -Entra account)

### Task 1: Verify the sharing options in a site

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/Mark8ProjectTeam**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In the Mark 8 Project team site, click the *Settings* icon (the gear icon) and click **Site contents**.
1. In Site contents, click **Documents**.
1. In Documents, select **Compaign Sales Data.xlsx** and, on the toolbar, click **Share**.
1. In Share "Comapaign Sa...s Data.xlsx", click *Link settings* icon (the gear icon) at the bottom.

    In Link settings, Anyone is disabled, despite you enabled it globally.

1. In Link settings, click **Cancel**.

### Task 2: Modify the sharing settings of sites

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, select **Mark 8 Project Team** and click **Sharing**.
1. In the Sharing panel, under **External sharing**, click **Anyone**.

    Alternatively, you can also click the link **Reset to organization-level settings** at the bottom.

1. Click **Save**.

Repeat from step 6 for the site **Brand**.

### Task 3: Share content using an anyone link

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/Mark8ProjectTeam**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In the Mark 8 Project team site, click the *Settings* icon (the gear icon) and click **Site contents**.
1. In Site contents, click **Documents**.
1. In Documents, select **Compaign Sales Data.xlsx** and, on the toolbar, click **Share**.
1. In Share "Comapaign Sa...s Data.xlsx", click *Link settings* icon (the gear icon) at the bottom.
1. In Link settings, click **Anyone** and click **Apply**.
1. In **Share "Comapaign Sa...s Data.xlsx"**, click **Copy link**.
1. Close **Share "Comapaign Sa...s Data.xlsx"**.
1. In Microsoft Edge, click the ellipsis in the top-right corner and click **New InPrivate window**.
1. In the InPrivate window of Microsoft Edge, in the address bar, paste the copied link and press ENTER.

    You should see the Excel workbook.

1. Close the InPrivate window of Microsoft Edge.

### Task 4: Share a folder with an authenticating link

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/Mark8ProjectTeam**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In the Mark 8 Project team site, click the *Settings* icon (the gear icon) and click **Site contents**.
1. In Site contents, click **Documents**.
1. In Documents, select **Design** and click **Share**.
1. In Share "Design", in **Add a name, group, or email**, type one of your personal email addresses. In this case a Microsoft or Entra account is preferred. Click your email address to confirm. To the right of the text input, click the icon *Can view* and click **Can edit**. Click **Send**.
1. Close the message **You've invited...**

Check your email for the invitation message and follow the instructions to access the content. If you do not receive an email similar to [figure 1] within 5 minutes, check your Junk-E-Mail folder.

### Task 5: Share a site

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/Brand**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In the Brand site, click the *Settings* icon (the gear icon) and click **Site permissions**.
1. In the Permissions panel, click **Share site**.
1. In the Site access panel, under A**dd users, Microsoft 365 Groups, or security groups to give them access to the site**, type one of your personal email addresses. In this case a non-Microsoft or -Entra account is preferred. Click your email address to confirm. Below your email address, click the drop down (currently **Read**) and select **Edit**. Click **Share**.

Check your email for the invitation message and follow the instructions to access the content. If you do not receive an email similar to [figure 2] within 5 minutes, check your Junk-E-Mail folder.

## Exercise 2: Manage shared content

1. [Run a sharing report](#task-1-run-a-sharing-report) on site Mark 8 Project Team
1. [Remove the anyone link](#task-2-remove-the-anyone-ink)
1. [Delete guest users](#task-3-delete-guest-users)

### Task 1: Run a sharing report

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/Mark8ProjectTeam**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In the Mark 8 Project team site, click the *Settings* icon (the gear icon) and click **Site usage**.
1. In Site usage analytics, scroll down to the heading **Shared with external users**. If you do not see anything here, click **Run report**.

    Verify that the contents you shared in this lab is listed.

### Task 2: Remove the anyone ink

Perform this task on WIN1.

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/Mark8ProjectTeam**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In the Mark 8 Project team site, click the *Settings* icon (the gear icon) and click **Site contents**.
1. In Site contents, click **Documents**.
1. In Documents, in the context-menu of  **Compaign Sales Data.xlsx** click **Manage access**.
1. In Manage Access, click the tab **Links**.

    You should see the Anyone-link you created earlier.

1. On the tab Links, right to the Anyone-link, click **Copy**. Click the icon *Remove link* (the recycle bin icon).
1. In the message box Delete link?, click **Remove**.
1. Close **Manage Access**.
1. In Microsoft Edge, click the ellipsis in the top-right corner and click **New InPrivate window**.
1. In the InPrivate window of Microsoft Edge, in the address bar, paste the copied link and press ENTER.

    Verify that the link was removed.

1. Close the InPrivate window of Microsoft Edge.

### Task 3: Delete guest users

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://entra.microsoft.com**.
1. Sign in as global administrator.
1. In Microsoft Entra admin center, click **Users** and **All users**.
1. In Users, click **Add filter**. Find and click the property **User type**. Ensure under **Operator**, **==** is selected. Under **Value**, select **Guest**. Click **Apply**.

    You should see the guest users you invited during this lab.

1. Select all guest users. And click **Delete**.
1. In the message Delete the selected users?, click **OK**.

If time allows, you may verify that your invitation links do not work anymore.

[figure 1]:/images/mail-sharing-invitation-folder.png
[figure 2]:/images/mail-sharing-invitation-site.png
