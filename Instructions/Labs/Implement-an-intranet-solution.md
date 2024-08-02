# Lab: Implement an intranet solution

## Setup

On **LON-CL1**, sign in as **Administrator**.

You must have created the following sites. If you have completed the lab [Site administration](Site-administration.md), these sites should be present. If you are missing a site, refer to the tasks below to create them.

| Site name                   | URL                                                   | Task |
| --------------------------- | ----------------------------------------------------- | ---- |
| IT department               | /sites/IT                                             | [Create communication sites](Site-administration.md#task-3-create-communication-sites) |
| IT department internal      | /sites/IT-internal                                    | [Create a team site with a Microsoft 365 group](Site-administration.md#task-1-create-a-team-site-with-a-microsoft-365-group) |
| IT help desk                | /sites/IThelpdesk                                     | [Verify that users can create SharePoint sites](Site-administration.md#task-4-verify-that-users-can-create-sharepoint-sites) |
| OneDrive deployment project | /teams/Project1Drive                                  | [Create team sites without a Microsoft 365 group](Site-administration.md#task-2-create-team-sites-without-a-microsoft-365-group) |
| SharePoint project          | /sites/SharePointProject or /sites/SharePoint-Project | [Create team sites without a Microsoft 365 group](Site-administration.md#task-2-create-team-sites-without-a-microsoft-365-group) |

## Introduction

Contoso wants to build a home site using Viva Connections to enable global navigation and a unified dashboard for all users.

After the design of the new home site is finished, your company wants you to replace to unused generic root site with the new site. As a next step, your company wants to introduce hubs to have a common navigation between sites.

## Exercises

1. [Replace the root site](#exercise-1-replace-the-root-site)
1. [Manage hub sites](#exercise-2-manage-hub-sites)
1. [Configure Viva Connections and global navigation](#exercise-3-configure-viva-connections-and-global-navigation)
1. [Configure and use the dashboard](#exercise-4-configure-and-use-the-dashboard)
1. [Configure an organization news site](#exercise-5-configure-an-organization-news-site)

## Exercise 1: Replace the root site

1. [Explore the current root site](#task-1-explore-the-current-root-site)
1. [Create a new communication site](#task-2-create-a-new-communication-site) with the name Contoso home site using the Organization home template
1. [Add everyone to the visitors group](#task-3-add-everyone-to-the-visitors-group) of Contoso home site

1. [Replace the root site](#task-4-replace-the-root-site) with the new Contoso home site
1. [Verify the new root site](#task-5-verify-the-new-root-site)

### Task 1: Explore the current root site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.

    You should see a generic communication site. You may explore the site further.

### Task 2: Create a new communication site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Sites**, **Active sites**.
1. In Active sites, click **Create**.
1. In Create a site: Select the site type, click **Communication site**.
1. In Select a template, click **Organization home**.
1. In Preview and use 'Organization home' template, click **Use template**.
1. In Give your site a name, under **Site name**, type **Contoso home site**. Under **Site description**, type **Contoso's new home site with Viva Connections**. Under **Site address**, in the drop-down, ensure **../sites/** is selected and, beside, type **homesite**. Under **Site owner**, find and click **Lynne Robbins**. Click **Next**.
1. In Set language and other options, under **Select a language**, ensure **English** is selected. Under **Time zone**, select your time zone. Under **Storage limit** (if available), type **1**. Click **Create site**.

### Task 3: Add everyone to the visitors group

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

### Task 4: Replace the root site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, select **Communication site** with the root URL. On the toolbar click **Manage home site** (you may have to click the ellipsis to see this command).
1. In the Home site panel, under **Current home site**, beside the current home site, click the **X** icon to remove it as home site. Click **Save**.
1. In **Active Sites**, in the row of site **Contoso home site**, in the column **URL**, in the context-menu of the URL, click **Copy link**.
1. Select **Communication site** with the root URL. On the toolbar click **Replace site** (you may have to click the ellipsis to see this command).
1. In the panel Replace root site, under **URL of the site you want to use**, paste the copied URL of Contoso home site. Click **Save**.

    Wait for the action to complete. This may take a minute or two.

### Task 5: Verify the new root site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.

    You should see a site using the organization home template with the name Contoso home site.

## Exercise 2: Manage hub sites

1. [Register sites as hub sites](#task-1-register-sites-as-hub-sites)

    * Contoso home site
    * IT department
    * Executive corner
    * HR
    * News \@ Contoso

1. [Associate sites with the hub](#task-2-associate-sites-with-the-hub) IT department:

    * IT department internal
    * IT help desk
    * OneDrive deployment project
    * SharePoint project

1. [Associate hubs with the parent hub](#task-3-associate-hubs-with-a-parent-hub) Contoso home site:

    * IT department
    * Executive corner
    * HR
    * News \@ Contoso

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
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, select **Contoso home site** and click **Hub**, **Register as hub site**.
1. In the Register as hub site panel, accept the defaults and click **Save**.
1. Close the panel.
1. Repat steps 6 - 8 for the site **IT department**.
1. In active sites, select **Executive Corner** and click **Hub**, **Change hub association**.
1. In the panel Edit hub association, under **Select a hub**, select **None** and click **Save**.
1. Close the panel.
1. With Executive corner still selected, click **Hub**, **Register as hub site**.
1. In the Register as hub site panel, accept the defaults and click **Save**.
1. Close the panel.
1. Repeat steps 10 - 15 for the sites HR and News \@ Contoso.

### Task 2: Associate sites with the hub

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, select **IT department internal**, **IT help desk**, **OneDrive deployment project**, and **SharePoint project**. click **Bulk edit**, **Hub association**.
1. In the panel Edit hub association, under **Select a hub**, select **IT department** and click **Save**.

### Task 3: Associate hubs with a parent hub

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, select **HR** and click **Hub**, **Edit hub site settings**.
1. In the panel Hub site settings, under **Parent hub association**, select **Contoso home site** and click **Save**.
1. Close the panel.
1. Repeat steps 6 - 8 for **Executive corner**, **HR**, and **News \@ Contoso**.

### Task 4: Edit the navigation on the top-level hub

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In active site, beside **Contoso home site**, click the URL.
1. On the site Contoso home site, in the hub navigation bar, click **Add link**.
1. In the Add panel, under **Choose an option**, select **Associated hubs**. Under Display name, type **Hubs** and click **OK**.
1. In the Edit hub navigation panel, click **Save**.

### Task 5: Edit the navigation on the hub site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
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

## Exercise 3: Configure Viva Connections and global navigation

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

## Exercise 4: Configure and use the dashboard

1. [Create a dashboard](#task-1-create-a-dashboard) with cards like News, Events, Assigned Tasks, Approvals, and OneDrive
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

## Exercise 5: Configure an organization news site

1. [Declare an organization news site](#task-1-declare-an-organization-news-site): News \@ Contoso

### Task 1: Declare an organization news site

Perform this task on LON-CL1.

1. Open **Terminal**.
1. In Terminal, click the down chevron and click **Windows PowerShell**.
1. Connect to Sharepoint Online.

    ````powershell
    
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com"
    ````

1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Declare the site **/sites/news** as organization news site.

    ````powershell
    Set-SPOOrgNewsSite `
        -OrgNewsSiteUrl https://$tenantName.sharepoint.com/sites/News
    ````

1. Verify the organization news sites.

    ````powershell
    Get-SPOOrgNewsSite
    `````

    /sites/news should be in the list. If you configured a home site before, this site is in the list too.

[figure 1]:/images/contoso-home-site-edit-empty.png