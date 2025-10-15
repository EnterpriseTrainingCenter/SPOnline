### Task 6: Register the Entra ID App for interactive login with the PnP Powershell

1. Open **PowerShell** or **Terminal**.
1. In Windows Terminal, ensure **PowerShell** is shown at the top. You can open a new tab for PowerShell by clicking the down chevron and selecting **PowerShell**.
1. Register an App for the PnP PowerShell module.

    Your tenant name is the first label of the domain name in your Office 365 Tenant credentials. E.g., if your tenant credentials are admin@WWLx627621.onmicrosoft.com, your tenant name is WWLx627621.

    ````powershell
    $tenant = '' # Insert your tenant name here
    Register-PnPEntraIDAppForInteractiveLogin `
        -ApplicationName 'PnP PowerShell Cmdlets' `
        -Tenant "$tenant.onmicrosoft.com"
    ````

    A browser window opens.

1. Sign in using your Office 365 Tenant Credentials for the Global Admin.
1. When the message You are signed in now and can close this page appears, close the browser window and switch back to Terminal. Wait for about 30 seconds. A new browser window will open.
1. Sign in again using your Office 365 Tenant Credentials for the Global Admin.
1. In the dialog Permissions requested, activate **Consent on behalf of your organization** and click **Accept**.
1. When the message You successfully provided consent now and can close this page appears, close the browser window and switch back to Terminal. After a few seconds, the command emits an AzureAppId/ClientId. Take a note or copy it to the clipboard.
1. Register the AzureAppId/ClientId as default.

    ````powershell
    $appId = '' # Insert your ID
    Set-PnPManagedAppId -Url "https://$tenant.sharepoint.com" -AppId $appId
    Set-PnPManagedAppId `
        -Url "https://$tenant-admin.sharepoint.com" -AppId $appId
    ````