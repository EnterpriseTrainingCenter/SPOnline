# Practice: Enable Integration with Entra B2B

## Task

Enable the integration between SharePoint, OneDrive, and EntraB2B.

## Instructions

Perfrom this task on LON-CL1.

1. Sign in to **LON-CL1** as **Administrator**.
1. Open **Terminal**.
1. In Terminal, click the down chevron and click **Windows PowerShell**.
1. Connect to Sharepoint Online.

    ````powershell
    
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com"
    ````

1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Verify the status of Entra B2B integration.

    ````powershell
    Get-SPOTenant | Select-Object EnableAzureADB2BIntegration
    `````

1. If the property **EnableAzureADB2BIntegration** is **False**, enable the integration by running this command.

    ````powershell
    Set-SPOTenant -EnableAzureADB2BIntegration $true
    ````

    Run the command from the previous step again to check the status of the integration.

1. Disconnect from SharePoint Online.

    ```powershell
    Disconnect-SPOService
    ````
