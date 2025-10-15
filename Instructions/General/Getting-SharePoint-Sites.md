# Getting SharePoint Sites

## Web UI

1. Open **Microsoft Edge**.
1. Navigate to **https://admin.microsoft.com**.

    If you are not signed in with the correct account, click your account icon in the top-right corner, and click **Sign out**. Then close Microsoft Edge and start the task again.

1. Sign with a user holding the Global admin or SharePoint Administrator role.
1. In Microsoft 365 admin center, in the left navigation, click **Show all** and click **SharePoint**.

    In SharePoint admin center, verify that you are signed in with the correct account. If you are still signed in with the wrong account, click your account icon in the top-right corner, and click **Sign out**. Close the tab and repeat this step.

1. In SharePoint admin center, click **Sites** and **Active sites**.

    You should see a list of sites.

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

## References

[Manage sites in the SharePoint admin center - SharePoint in Microsoft 365 | Microsoft Learn](https://learn.microsoft.com/en-us/sharepoint/manage-sites-in-new-admin-center)

[Get-SPOSite (Microsoft.Online.SharePoint.PowerShell) - PowerShell](https://learn.microsoft.com/en-us/powershell/module/microsoft.online.sharepoint.powershell/get-sposite)

[Get-PnPTenantSite | PnP.PowerShell](https://pnp.github.io/powershell/cmdlets/Get-PnPTenantSite.html)
