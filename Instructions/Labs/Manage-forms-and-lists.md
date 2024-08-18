# Lab: Manage Forms and Lists

## Setup

On **LON-CL1**, sign in as **Administrator**.

If you skipped Lab [Get started with SharePoint administration](/Instructions/Labs/Get-started-with-SharePoint-administration.md), in **PowerShell** or **Windows PowerShell**, execute **C:\LabResources\Solutions\Invoke-SharePointAndTeamsConfiguration.ps1**. If you are asked to sign in, use the global administrator credentials of your tenant.

## Introduction

Contoso wants to use Microsoft Forms, but is concerned about data protection. Therefore, you want to limit external sharing and content in Microsoft Forms. Furthermore, Contoso wants to provide a custom Expense tracker list template for project sites.

## Exercises

1. [Configure Microsoft Forms](#exercise-1-configure-microsoft-forms)
1. [Manage list templates](#exercise-2-manage-list-templates)

## Exercise 1: Configure Microsoft Forms

[Configure Microsoft Forms options](#task-configure-microsoft-forms-options): Disable sharing of forms layout and structure, prohibit form duplication by externel users and sharing of form results to external users; by default names must not be recorded; Bing search an YouTube videos should not be allowed.

### Task: Configure Microsoft Forms options

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as Global Administrator.
1. In Microsoft 365 admin center, click **Show all**, **Settings** and **Org Settings**.
1. In Org settings, on the tab **Services**, click **Microsoft Forms**.
1. Disable the following options and click **Save**.

    Under **External sharing**

    * Share to collaborate on the form layout and structure
    * Share the form as a template that can be duplicated
    * Share form result summary

    Under **Record names of people in your org**

    * Record names by default

    Under **Allow YouTube and Bing**

    * Bing search,  YouTube videos

## Exercise 2: Manage list templates

1. [Create a list](#task-1-create-a-list) from the template using the integrated template Expense tracker and add a choice column with the name Status and the choices Pending, Approved, Rejected
2. [Create a custom list template](#task-2-create-a-custom-list-temmplate) from the list
3. [Create a list from the custom list template](#task-3-create-a-list-from-the-custom-list-template) in site site Mark 8 Project Team

### Task 1: Create a list

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://www.microsoft365.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. On Welcome to Microsoft 365, click the app launcher, find and click the app **Lists**.
1. In Microsoft Lists, click **New list**.
1. In Create a list, under **Templates**, on the tab **From Microsoft**, click **Expense tracker**.
1. On Expense tracker, click **Use template**.
1. Under **Save to**, ensure **My lists** is selected and leave all other settings to their defaults. Click **Create**.
1. In Expense tracker, click **Add column**, **Choice** and **Next**.
1. In the Create a column panel, under **Name**, enter **Approval**. Under **Choices**, click **Choice 1** and type **Pending**. Click **Choice 2** and type **Approved**. Click **Choice 3** and type **Rejected**. Under **Default value**, select **Pending**. Click **More options**. Activate **Require that this column contains information**. Click **Save**.

If time allows, you may add some lines to the list, if you want to try the functionality.

### Task 2: Create a custom list temmplate

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://www.microsoft365.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. On Welcome to Microsoft 365, click the app launcher, find and click the app **Lists**.
1. In Microsoft Lists, click **Expense tracker**.
1. In Expense tracker, copy the URL left to **/AllItems.aspx** to the clipboard, e.g. https:\/\/wwlx421595-my.sharepoint.com\/personal\/lynner_wwlx421595_onmicrosoft_com\/Lists\/Expense%20tracker. Save the URL, e.g., in Notepad for later use.
1. Open **Terminal**.
1. In Terminal, click the down chevron and **Windows PowerShell**.
1. Connect to Sharepoint Online.

    ````powershell
    
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com"
    ````

1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Make sure the list URL is copied to the clipboard. Extract a site script from the list.

    ````powershell
    $siteScriptContent = Get-SPOSiteScriptFromList -ListUrl (Get-Clipboard)
    ````

    If you are interested, you may save the the script to a file and review it, e.g.,

    ````powershell
    $siteScriptContent | Out-File expensetracker.json
    ````

1. Upload the site script.

    ````powershell
    $title = 'Contoso Expense Tracker'
    $siteScript = Add-SPOSiteScript -Title $title -Content $siteScriptContent
    ````

1. Create a list design using the script id returned from the previous step.

    ````powershell
    Add-SPOListDesign -Title $title -SiteScripts $siteScript.Id
    ````

1. Disconnect from SharePoint Online.

    ```powershell
    Disconnect-SPOService
    ````

### Task 3: Create a list from the custom list template

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https:\/\/\<your tenant\>\.sharepoint.com\/sites\/Mark8ProjectTeam**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Mark 8 Project Team, click the *Settings* icon (the gear icon) and click **Site contents**.
1. In Site contents, click **New**, **List**.
1. In Create a list, under **Templates**, click the tab **From your organization**.
1. On the tab From your organization, click **Contoso Expense Tracker**.
1. On Contoso Expense Tracker, click **Use template**.
1. Accept the defaults and click **Create**.
1. In Contoso Expense Tracker, click **Add new item**.

    Verify, that the new status column is present.
