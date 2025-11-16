# Managing organization assets libraries

1. In Windows PowerShell, connect to SharePoint online.

    ```powershell
    $tenant = '' # Between the quotes insert your tenant name
    Connect-SPOService -Url "https://$tenant-admin.sharepoint.com/"
    ```

1. Sign in.

## List the organization assets libraries

```powershell
Get-SPOOrgAssetsLibrary
```

## Add an organization assets library

1. Create a library in a site.

    [Creating a document library](../General/Creating-a-document-library.md)

1. Grant **Everyone, except external users** the **Read** permission level on the library. Grant or modify other permissions as desired.

    [Managing permissions of a library](../General/Managing-permissions-of-a-library.md)

1. Add the library as organization assets library.

    ```powershell
    $libraryUrl = '' # Between the quotes insert the URL of the library
    <#
        Between the quotes, insert either 
            * ImageDocumentLibrary
            * OfficeFontLibrary
            * OfficeTemplateLibrary
    #>
    $orgAssetType = ''
    $thumbNailURL = $null # Optionally provide a URL with thumbnails

    Add-SPOOrgAssetsLibrary `
        -LibraryUrl $libraryUrl -OrgAssetType $orgAssetType -CdnType Public
    ```

# Remove an organization assets library

```powershell
$libraryUrl = '' # Between the quotes insert the URL of the library
Remove-SPOOrgAssetsLibrary `
    -LibraryUrl $libraryUrl -OrgAssetType $orgAssetType -CdnType Public
    
```

## References
[Get-SPOOrgAssetsLibrary (Microsoft.Online.SharePoint.PowerShell) | Microsoft Learn](https://learn.microsoft.com/en-us/powershell/module/microsoft.online.sharepoint.powershell/get-spoorgassetslibrary?view=sharepoint-ps)
[Create an organization assets library | Microsoft Learn](https://learn.microsoft.com/en-us/sharepoint/organization-assets-library)
[Remove-SPOOrgAssetsLibrary (Microsoft.Online.SharePoint.Powershell) | Microsoft Learn](https://learn.microsoft.com/en-us/powershell/module/microsoft.online.sharepoint.powershell/remove-spoorgassetslibrary?view=sharepoint-ps)

