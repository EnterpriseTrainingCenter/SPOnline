# Lab: Site administration

## Setup

1. On LON-CL1, sign in as Administrator.
1. Open the **SharePoint admin center** and sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.

## Introduction

To support various projects you want to create team sites for the SharePoint and the OneDrive deployment project, as well as for the IT department. You want to test the upgrade of a site to a Microsoft 365 group and add Teams functionality. Moreover, you want to test the restore functionality of sites and Microsoft 365 group.  Furthermore, you want to create communication sites for the IT department and a new home site for Contoso.

## Exercises

1. Manage sites
1. Manage site admins
1. Manage site creation
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

1. Add a site admins to sites
1. Verify the site admins

## Exercise 3: Manage site creation

1. Verify that users can create Microsoft 365 groups
1. Limit the users that can create Microsoft 365 groups
1. Verify that users cannot create Microsoft 365 groups
1. Verify that users can create SharePoint sites
1. Disable the creation of SharePoint sites by users and change the default settings for new sites
1. Verify that users cannot create SharePoint sites

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