# Uploading organization fonts

1. In Windows PowerShell, connect to SharePoint online.

    ```powershell
    $tenant = '' # Between the quotes insert your tenant name
    Connect-SPOService -Url "https://$tenant-admin.sharepoint.com/"
    ```

    *Note:* In recent versions of the **Microsoft.Online.SharePoint.PowerShell** module, the file **msalruntime.dll** is missing, and `Connect-SPOService` fails with the error *Unable to load DLL 'msalruntime'*. As a workaround, add the parameter `-UseSystemBrowser $true` to the `Connect-SPOService` command.

1. Sign in.
1. Upload the organization fonts.

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

1. Sign in again, if required.

## References

[Support for organization fonts in PowerPoint and Word - SharePoint in Microsoft 365 | Microsoft Learn](https://learn.microsoft.com/en-us/sharepoint/support-for-organization-fonts-in-powerpoint-for-the-web)