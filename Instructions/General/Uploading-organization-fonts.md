Import-Module Microsoft.Online.SharePoint.PowerShell
# Uploading organization fonts

1. In Windows PowerShell, connect to SharePoint online.

    ```powershell
    $tenant = '' # Between the quotes insert your tenant name
    Connect-SPOService -Url "https://$tenant-admin.sharepoint.com/"
    ```

1. Sign in.
1. Upload the organization fonts. Sign in again, if required.

    ```powershell
     # Between the quotes insert the URL of the organization font library
    $libraryUrl = ''

    <#
        Between the quotes insert the absolute path to the local folder
        containing the organization fonts
    #>
    $fontFolder = '' 
    
    Set-SPOCustomFontCatalog -LibraryUrl $libraryUrl -FontFolder $fontFolder
    ```

    *Note:* If the command fails with the error *Access to the registry key 'HKEY_LOCAL_MACHINE\Software\WOW6432Node\Microsoft\StrongName\Verification\\\*,\*' is denied* or *No valid OAuth 2.0 authentication session exists*, apply this workaround: Close **Windows PowerShell** and reopen it as Administrator. Connect to SharePoint online again and run the command.

## References

[Support for organization fonts in PowerPoint and Word - SharePoint in Microsoft 365 | Microsoft Learn](https://learn.microsoft.com/en-us/sharepoint/support-for-organization-fonts-in-powerpoint-for-the-web)