# Practice: Declare an organization news site

## Setup

If you skipped Lab [Get started with SharePoint administration](/Instructions/Labs/Get-started-with-SharePoint-administration.md), in **PowerShell** or **Windows PowerShell**, execute **C:\LabResources\Solutions\Start-SharePointAndTeamsConfiguration.ps1**. If you are asked to sign in, use the global administrator credentials of your tenant.

## Task

Declare the site News \@ Contoso as organization news site.

## Instructions

Perform this task on WIN1.

1. Sign in to **WIN1** as **Administrator**.
1. Open **Terminal**.
1. In Terminal, click the down chevron and click **Windows PowerShell**.
1. Connect to Sharepoint Online.

    ````powershell
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com"
    ````

    *Note:* In recent versions of the **Microsoft.Online.SharePoint.PowerShell** module, the file **msalruntime.dll** is missing, and `Connect-SPOService` fails with the error *Unable to load DLL 'msalruntime'*. As a workaround, add the parameter `-UseSystemBrowser $true` to the `Connect-SPOService` command.

1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Declare the site **/sites/news** as organization news site.

    ````powershell
    Set-SPOOrgNewsSite `
        -OrgNewsSiteUrl https://$tenantName.sharepoint.com/sites/News
    ````

1. Verify the organization news sites.

    ````powershell
    Get-SPOOrgNewsSite
    ````

    /sites/news should be in the list. If you configured a home site before, this site is in the list too.
