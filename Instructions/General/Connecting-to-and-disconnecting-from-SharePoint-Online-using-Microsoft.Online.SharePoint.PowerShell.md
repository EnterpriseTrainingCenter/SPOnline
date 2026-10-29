# Connecting to and disconnecting from SharePoint Online using Microsoft.Online.SharePoint.PowerShell

## Connecting to SharePoint Online

1. Open **Windows PowerShell** or **Terminal**.
1. In Windows Terminal, ensure **Windows PowerShell** is shown at the top. You can open a new tab for PowerShell by clicking the down chevron and selecting **Windows PowerShell**.
1. Connect to SharePoint Online using the SharePoint Online module.

    ````powershell
    $tenant = '' # Between the quotes, insert your tenant name
    Connect-SPOService -Url "https://$tenant-admin.sharepoint.com"
    ````

## Disconnecting from SharePoint Online

````powershell
Disconnect-SPOService
````

## References

[Connect-SPOService (Microsoft.Online.SharePoint.PowerShell) - PowerShell | Microsoft Learn](https://learn.microsoft.com/en-us/powershell/module/microsoft.online.sharepoint.powershell/connect-sposervice)

[Disconnect-SPOService (Microsoft.Online.SharePoint.PowerShell) - PowerShell | Microsoft Learn](https://learn.microsoft.com/en-us/powershell/module/microsoft.online.sharepoint.powershell/disconnect-sposervice)