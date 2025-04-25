# Lab: Build an enterprise portal

## Setup

On **WIN1**, sign in as **Administrator**.

If you skipped Lab [Site administration](/Instructions/Labs/Site-administration.md), in **PowerShell** or **Windows PowerShell**, execute **C:\LabResources\Solutions\New-Sites.ps1**. If you are asked to sign in, use the global administrator credentials of your tenant.

## Introduction

After the design of the new home site is finished, your company wants you to replace to unused generic root site with the new site. As a next step, your company wants to introduce hubs to have a common navigation between sites. The root site should defined as home site including a global navigation.

## Exercises

1. [Replace the root site](#exercise-1-replace-the-root-site)
1. [Manage hub sites](#exercise-2-manage-hub-sites)
1. [Configure Viva Connections and global navigation](#exercise-3-configure-viva-connections-and-global-navigation)
1. [Configure and use the dashboard](#exercise-4-configure-and-use-the-dashboard)

## Exercise 1: Replace the root site

1. [Explore the current root site](#task-1-explore-the-current-root-site)
1. [Replace the root site](#task-2-replace-the-root-site) with the new Contoso home
1. [Verify the new root site](#task-3-verify-the-new-root-site)

### Task 1: Explore the current root site

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.

    You should see a generic communication site. You may explore the site further.

### Task 2: Replace the root site

#### Web UI

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, select **Communication site** with the root URL. On the toolbar click **Manage home site** (you may have to click the ellipsis to see this command).

    If you do not see this command, skip to step 8.

1. In the Home site panel, under **Current home site**, beside the current home site, click the **X** icon to remove it as home site. Click **Save**.
1. In **Active Sites**, in the row of site **Contoso home**, in the column **URL**, in the context-menu of the URL, click **Copy link**.
1. Select **Communication site** with the root URL. On the toolbar click **Replace site** (you may have to click the ellipsis to see this command).
1. In the panel Replace root site, under **URL of the site you want to use**, paste the copied URL of Contoso home. Click **Save**.

    Wait for the action to complete. This may take a minute or two.

#### PowerShell

Perform this task on WIN1.

1. Open **Terminal**.
1. In Terminal, click the down chevron and **Windows PowerShell**.
1. Ensure **Windows Powershell** is shown at the top. Sign in to SharePoint.

    ````powershell
    Import-Module Microsoft.Online.SharePoint.PowerShell
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com/"
    ````

1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Remove the current home site.

    ````powershell
    Remove-SPOHomeSite
    `````

1. Set the site **/sites/home** as new root site.

    ````powershell
    Invoke-SPOSiteSwap `
        -SourceUrl "https://$tenantName.sharepoint.com/sites/home" `
        -TargetUrl "https://$tenantName.sharepoint.com/" `
        -ArchiveUrl "https://$tenantname.sharepoint.com/sites/oldhome"
    ````

1. Disconnect SharePoint.

    ````powershell
    Disconnect-SPOService
    ````

### Task 3: Verify the new root site

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.

    You should see a site using the organization home template with the name Contoso home.

## Exercise 2: Manage hub sites

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

#### Web UI

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, select **Contoso home** and click **Hub**, **Register as hub site**.
1. In the Register as hub site panel, accept the defaults and click **Save**.
1. Close the panel.
1. Repat steps 6 - 8 for the site **IT department**.
1. In active sites, select **Executive Corner** and click **Hub**, **Change hub association**.
1. In the panel Edit hub association, under **Select a hub**, select **None** and click **Save**.
1. Close the panel.
1. With Executive corner still selected, click **Hub**, **Register as hub site**.
1. In the Register as hub site panel, accept the defaults and click **Save**.
1. Close the panel.
1. Repeat steps 10 - 15 for the site **HR**.

#### PowerShell

Perform this task on WIN1.

1. Open **Terminal**.
1. In Terminal, click the down chevron and **Windows PowerShell**.
1. Ensure **Windows Powershell** is shown at the top. Sign in to SharePoint.

    ````powershell
    Import-Module Microsoft.Online.SharePoint.PowerShell
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com/"
    ````

1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Remove the current hub site association for the sites **/sites/Exec** and **/sites/HR**.

    ````powershell
    Remove-SPOHubSiteAssociation -Site "https://$tenantName.sharepoint.com/sites/exec"
    Remove-SPOHubSiteAssociation -Site "https://$tenantName.sharepoint.com/sites/HR"
    `````

1. Register the sites **/**, **/sites/IT**, **/sites/Exec**, and **/sites/HR** as hub sites.

    ````powershell
    $sites = @(
        '/'
        '/sites/IT'
        '/sites/Exec'
        '/sites/HR'
    )
    $sites | ForEach-Object {
        Register-SPOHubSite `
            -Site "https://$tenantName.sharepoint.com$PSItem" -Principals $null
    }
    ````

1. Disconnect SharePoint.

    ````powershell
    Disconnect-SPOService
    ````

### Task 2: Associate sites with the hub

#### Web UI

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, select **IT department internal**, **IT help desk**, **OneDrive deployment project**, and **SharePoint project**.
1. Click **Bulk edit**, **Hub association**.
1. In the panel Edit hub association, under **Select a hub**, select **IT department** and click **Save**.

#### PowerShell

Perform this task on WIN1.

1. Open **Terminal**.
1. In Terminal, click the down chevron and **Windows PowerShell**.
1. Ensure **Windows Powershell** is shown at the top. Sign in to SharePoint.

    ````powershell
    Import-Module Microsoft.Online.SharePoint.PowerShell
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com/"
    ````

1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Associate the sites **/sites/IT-internal**, **/teams/ITHelpdesk**, **teams/Project1Drive**, and **sites/SharePointProject** with the IT hub.

    ````powershell
    $sites = @(
        '/sites/IT-internal'
        '/teams/ITHelpdesk'
        '/teams/Project1Drive'
        '/sites/SharePointProject'
    )
    $sites | ForEach-Object {
        Add-SPOHubSiteAssociation `
            -Site "https://$tenantName.sharepoint.com$PSItem" `
            -Hubsite "https://$tenantName.sharepoint.com/sites/IT"
    }
    ````

1. Disconnect SharePoint.

    ````powershell
    Disconnect-SPOService
    ````

### Task 3: Associate hubs with a parent hub

#### Web UI

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, select **IT department** and click **Hub**, **Edit hub site settings**.
1. In the panel Hub site settings, under **Parent hub association**, select **Contoso home** and click **Save**.
1. Close the panel.
1. Repeat steps 6 - 8 for **Executive corner** and **HR**.

#### PowerShell

Perform this task on WIN1.

1. Open **Terminal**.
1. In Terminal, click the down chevron and **Windows PowerShell**.
1. Ensure **Windows Powershell** is shown at the top. Sign in to SharePoint.

    ````powershell
    Import-Module Microsoft.Online.SharePoint.PowerShell
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com/"
    ````

1. Sign in using **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Associate the hubs **/sites/IT**, **/sites/Exec**, and **sites/HR** with the hub at the root.

    ````powershell
    $sites = @(
        '/sites/IT'
        '/sites/Exec'
        '/sites/HR'
    )
    $target = Get-SPOHubSite -Identity "https://$tenantName.sharepoint.com"
    $sites | ForEach-Object {
        $source = Get-SPOHubSite `
            -Identity "https://$tenantName.sharepoint.com$PSItem"
        Add-SPOHubToHubAssociation -Source $source.ID -Target $target.ID
    }
    ````

1. Disconnect SharePoint.

    ````powershell
    Disconnect-SPOService
    ````

### Task 4: Edit the navigation on the top-level hub

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In active site, beside **Contoso home**, click the URL.
1. On the site Contoso home, in the hub navigation bar, click **Add link**.
1. In the Add panel, under **Choose an option**, select **Associated hubs**. Under Display name, type **Hubs** and click **OK**.
1. In the Edit hub navigation panel, click **Save**.
1. In the hub navigation bar, click **Edit**.
1. Hover the mouse just below IT department, and click the icon *Add a link or label to navigation* [figure 1].
1. In the fly-out Add, under **Choose an option**, ensure **Link** is selected. Under **Address**, type **https://\<your tenant\>.sharepoint.com/sites/News**. Under **Display name**, type **News @ Contoso**. Click **OK**.
1. In Edit hub navigation, click the ellipsis right to **News @ Contoso** and click **Promote sub link**.
1. In the Edit hub navigation panel, click **Save**.

### Task 5: Edit the navigation on the hub site

Perform this task on WIN1.

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
1. In the Add panel, under **Choose an option**, ensure **Link** is selected. Under Address, type **/teams/Project1Drive**.  Under Display name, type **OneDrive deployment project** and click **OK**.
1. In the Edit hub navigation panel, to the right of **OneDrive deployment project**, click the ellipsis and click **Make sub link**.
1. In the Edit hub navigation panel, hover the mouse just under the **OneDrive deployment project** and click the **+**.
1. In the Add panel, under **Choose an option**, ensure **Link** is selected. Under Address, type **/sites/SharePoint-project**.  Under Display name, type **SharePoint project** and click **OK**.
1. In the Edit hub navigation panel, hover the mouse just under the **SharePoint project** and click the **+**.
1. In the Add panel, under **Choose an option**, select **Associated child hubs**. Under Display name, type **Hubs** and click **OK**.
1. In the Edit hub navigation panel, to the right of **Hubs**, click the ellipsis and click **Promote sub link**.
1. In the Edit hub navigation panel, click **Save**.

## Exercise 3: Configure Viva Connections and global navigation

1. [Create a new Viva Connections experience](#task-1-create-a-new-viva-connections-experience) based on your root site
1. [Set up global navigation](#task-2-set-up-global-navigation) for Contoso home to use the hub navigation

### Task 1: Create a new Viva Connections experience

Perform this task on WIN1.

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

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Contoso home site, click the *Settings* icon and click **Global navigation**.
1. In Global navigation settings panel, set **Enable global navigation** to **On**. You may customize the Logo or the Title, if you want. Under **Navigation source**, ensure **Hub or global navigation** is selected. Click **Save**.

    Verify that in the SharePoint app bar, the SharePoint start page was replaced by the global navigation. It can take up to 24 hours for the changes to take effect.

## Exercise 4: Configure and use the dashboard

1. [Create a dashboard](#task-1-create-a-dashboard) with cards like News, Events, Assigned Tasks, Approvals, and OneDrive
1. [Add Viva Connection web parts](#task-2-add-viva-connection-web-parts) Dashboard for Viva Connections and My Feed to the home page of the Contoso home site

### Task 1: Create a dashboard

Perform this task on WIN1.

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

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.

1. On Contoso home site (ensure, you are on the empty home page of the site), in the top-right corner, click **Edit**.
1. In the left column of the second section, click **Add a new web part in column 1** [figure 2] (hover with the mouse near the top of the section and click **+**).
1. Find and click **Dashboard for Viva connection**.
1. In the top-right corner, click **Republish**.
1. In Ready to republish?, click **Republish**.

[figure 1]:/images/edit-hub-navigation.png
[figure 2]:/images/contoso-home-site-edit-empty.png
