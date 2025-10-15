# Getting SharePoint Sites

## PnP PowerShell module

1. Open **PowerShell** or **Terminal**.
1. In Windows Terminal, ensure **PowerShell** is shown at the top. You can open a new tab for PowerShell by clicking the down chevron and selecting **PowerShell**.
1. Sign in to SharePoint using the PnP PowerShell module.

    ````powershell
    Connect-PnPOnline -Url "https://$tenant-admin.sharepoint.com" -Interactive
    ````

1. Sign in using an account with Global Admin or SharePoint Admin permissions.
1. In **Terminal**, list the sites in the tenant.

    ````powershell
    Get-PnPTenantSite
    ````

1. Sign out from SharePoint.

    ````powershell
    Disconnect-PnpOnline
    ````

## SharePoint Online module

1. Open **Windows PowerShell** or **Terminal**.
1. In Windows Terminal, ensure **Windows PowerShell** is shown at the top. You can open a new tab for PowerShell by clicking the down chevron and selecting **Windows PowerShell**.
1. Sign in to SharePoint using SharePoint Online module.

    ````powershell
    Connect-SPOService -Url "https://$tenant-admin.sharepoint.com"
    ````

1. Sign in using your Office 365 Tenant Credentials for the Global Admin.
1. List the sites in the tenant.

    ````powershell
    Get-SPOSite
    ````

1. Sign out from SharePoint.

    ````powershell
    Disconnect-SPOService
    ````
