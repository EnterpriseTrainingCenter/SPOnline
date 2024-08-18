# Practice: Enable the Content Delivery Network (CDN)

## Setup

If you skipped Lab [Get started with SharePoint administration](/Instructions/Labs/Get-started-with-SharePoint-administration.md), in **PowerShell** or **Windows PowerShell**, execute **C:\LabResources\Solutions\Invoke-SharePointAndTeamsConfiguration.ps1**. If you are asked to sign in, use the global administrator credentials of your tenant.

## Task

Enable the CDN and validate the effect by using the Page Diagnostics for SharePoint tool again on the Contoso @ Work site

## Instructions

Perform this task on LON-CL1.

1. Sign in to **LON-CL1** as **Administrator**.
1. Open **Terminal**.
1. In Terminal, click the down chevron and click **Windows PowerShell**.
1. Connect to Sharepoint Online.

    ````powershell
    
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com"
    ````

1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Enable the private and public CDN for your tenant.

    ````powershell
    Set-SPOTenantCdnEnabled -CdnType Both -Enable $true
    ````

1. After the message Are you sure you want to perform this action, enter **Y**.
1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/work**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Click the icon *Page diagnostics for SharePoint* and, in the fly-out, click **Start**.

    Wait for the diagnostics tool to finish. This can take a minute or two.

    Compare the results with your analysis in Practice [Explore the Page Diagnostics for SharePoint tool](./Explore-the-Page-Diagnostics-for-SharePoint-tool.md). Did the page load time improve?

    If time allows, repeat the diagnostics several times to get stable results.
