# Lab: Build a home site with Viva Connections

## Setup

On **LON-CL1**, sign in as **Administrator**.

If you skipped Lab [Get started with SharePoint administration](/Instructions/Labs/Get-started-with-SharePoint-administration.md), in **PowerShell** or **Windows PowerShell**, execute **C:\LabResources\Solutions\Invoke-SharePointAndTeamsConfiguration.ps1**. If you are asked to sign in, use the global administrator credentials of your tenant.

## Introduction

Contoso wants to build a home site using Viva Connections to enable global navigation and a unified dashboard for all users.

## Exercises

1. [Create a new root site](#exercise-1-create-a-new-root-site)
1. [Configure Viva Connections and global navigation](#exercise-2-configure-viva-connections-and-global-navigation)
1. [Configure and use the dashboard](#exercise-3-configure-and-use-the-dashboard)

## Exercise 1: Create a new root site

1. [Create a new communication site](#task-1-create-a-new-communication-site) with the name Contoso home site using the blank template
1. [Add everyone to the visitors group](#task-2-add-everyone-to-the-visitors-group) of Contoso home site
1. [Replace the root site](#task-3-replace-the-root-site-with-the-new-communication-site) with Contoso home site
1. [Register the root site as hub](#task-4-register-the-root-site-as-hub)

### Task 1: Create a new communication site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Sites**, **Active sites**.
1. In Active sites, click **Create**.
1. In Create a site: Select the site type, click **Communication site**.
1. In Select a template, click **Blank**.
1. In Preview and use 'Blank' template, click **Use template**.
1. In Give your site a name, under **Site name**, type **Contoso home site**. Under **Site description**, type **Contoso's new home site with Viva Connections**. Under **Site address**, in the drop-down, ensure **../sites/** is selected and, beside, type **homesite**. Under **Site owner**, find and click **Lynne Robbins**. Click **Next**.
1. In Set language and other options, under **Select a language**, ensure **English** is selected. Under **Time zone**, select your time zone. Under **Storage limit** (if available), type **1**. Click **Create site**.

### Task 2: Add everyone to the visitors group

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Sites**, **Active sites**.
1. Active sites, in the row of **Contoso home site**, in the column **URL**, click **../sites/homesite**.
1. In Contoso home site, click the *Settings* icon (the gear icon) and click **Site permissions**.
1. In the Permissions panel, click **Share site**.
1. In Site Access, find and click **Everyone except external users**. Under **Everyone except external users**, ensure **Read** is selected and click **Add**.
1. In **Permissions**, expand **Site visitors - no control**.

    Verify that Everyone except external users with Read permissions is listed.

### Task 3: Replace the root site with the new communication site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, click the column header **URL** and click **A to Z** to sort the sites by URL.

    The current root site is listed first now. Its name should be Communication Site or Contoso home. The URL should be https://\<your tenant\>.sharepoint.com.

1. Select the current root site. On the toolbar click **Manage home site** (you may have to click the ellipsis to see this command).

    If the command Manage home site is not available, skip to step 9.

1. In the Home site panel, under **Current home site**, beside the current home site, click the **X** icon to remove it as home site. Click **Save**.
1. In **Active Sites**, select the root site again. In the toolbar, click **Hub** (you may have to click the ellipsis to see this command) and **Unregister as hub site**.

    If the command Unregister as hub site is not available, skip to step 11.

1. In the message Unregister as hub site, click **OK**.
1. In **Active Sites**, in the row of site **Contoso home site**, in the column **URL**, in the context-menu of the URL, click **Copy link**.
1. Select the current root site again. On the toolbar click **Replace site** (you may have to click the ellipsis to see this command).
1. In the panel Replace root site, under **URL of the site you want to use**, paste the copied URL of Contoso home. Click **Save**.

Wait for the replacement to complete. This will take less than a minute.

### Task 4: Register the root site as hub

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, select **Contoso home site** and, on the toolbar, click **Hub** and **Register as hub site**.
1. In Register as hub site, under **Hub name**, type **Contoso** and click **Save**.
1. Close the panel.

## Exercise 2: Configure Viva Connections and global navigation

1. [Create a new Viva Connections experience](#task-1-create-a-new-viva-connections-experience) based on your root site
1. [Set up global navigation](#task-2-set-up-global-navigation) by configuring the hub navigation in the root site according to the table below and enabling the global navigation based on the hub navigation

    | Address           | Display name   |
    | ----------------- | -------------- |
    | /sites/HR         | HR             |
    | /sites/News       | News @ Contoso |
    | /sites/Operations | Operations     |
    | /sites/Work       | Work @ Contoso |

### Task 1: Create a new Viva Connections experience

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all**, click **Settings** and click **Viva**.
1. In Microsoft Viva, click **Viva Connections**.
1. In Viva Connections, click **Create and manage Viva Connections experiences**.
1. In Viva Connections experiences, click **Create new**.
1. On page Create a new Viva Connections experience, select **Build from an existing portal to set a home site** and click **Next**.
1. On page Set an intranet portal as a home site for Viva Connections, under **URL of the communication site you want to use**, type **https://\<your tenant\>.sharepoint.com** and click **Next**.
1. On page Review and finish, review your settings and click **Create experience**.
1. Under the message A new experience has been successfully created, click **Close**.

### Task 2: Set up global navigation

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In the hub navigation, click **Add link**.
1. In Add, under **Address**, type **/sites/HR**. Under **Display Name**, type **HR** and click **OK**.
1. In the panel Edit Hub navigation, hover the mouse just under **Brand**, and click **+**.
1. In Add, under **Address**, type **/sites/News**. Under **Display Name**, type **News @ Contoso** and click **OK**.

    Repeat the last two steps for the remaining links of the table above.

1. In the panel Edit Hub navigation, click **Save**.
1. In Contoso home site, click the *Settings* icon and click **Global navigation**.
1. In Global navigation settings panel, set **Enable global navigation** to **On**. You may customize the Logo or the Title, if you want. Under **Navigation source**, ensure **Hub or global navigation** is selected. Click **Save**.

    Verify that in the SharePoint app bar, the SharePoint start page was replaced by the global navigation. It can take up to 24 hours for the changes to take effect.

## Exercise 3: Configure and use the dashboard

1. [Create a dashboard](#task-2-create-a-dashboard) with cards like News, Events, Assigned Tasks, Approvals, and OneDrive
1. [Add Viva Connection web parts](#task-2-add-viva-connection-web-parts) Dashboard for Viva Connections and My Feed to the home page of the Contoso home site

### Task 1: Create a dashboard

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. On Contoso home site, click the *Settings* icon and click **Manage Viva Connections**.
1. In the panel Manage Viva Connections, click **Create Dashboard**.
1. Click **Add a card**.
1. Click **News**.

    Repeat the previous 2 steps for other cards like

    * Events
    * Assigned Tasks
    * Approvals
    * OneDrive

1. Click **Publish**.
1. Click the *Settings* icon and click **Site contents**.
1. In Site contents, click **Site Pages**.

    In Site pages, verify that page with the name **Dashboard.aspx** exists.

### Task 2: Add Viva Connection web parts

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.

1. On Contoso home site (ensure, you are on the empty home page of the site), in the top-right corner, click **Edit**.
1. In the left column of the second section, click **Add a new web part in column 1** [figure 1] (hover with the mouse near the top of the section and click **+**).
1. Find and click **Dashboard for Viva connection**.
1. In the right column of the second section, click **Add a new web part in column 2** (hover with the mouse near the top of the section and click **+**).
1. Find and click **My feed**.
1. In the top-right corner, click **Republish**.
1. In Ready to republish?, click **Republish**.

[figure 1]:/images/contoso-home-site-edit-empty.png