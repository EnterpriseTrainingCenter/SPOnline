# Creating a site template

1. In Windows PowerShell, connect to Sharepoint Online.

    ````powershell
    
    $tenantName = '' # Between the quotes insert your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com"
    ````

1. Sign in as global administrator or SharePoint administrator.
1. Extract a site script from the web.

    ````powershell
    $webUrl = '' # Between the quotes, insert the web URL
    <#
        Replace the example values in the array with the relative URLs of
        libraries and lists to include.
    #>
    $includedLists = @(
        'My%20Custom%20Library',
        'Lists/My%20Custom%20List'
    )
    $includeBranding = $true # Change to $false if required
    $includeTheme = $true #Change to $false if required

    <# 
        IncludeBranding and IncludeTheme are switch parameters. To use boolean
        variables as parameters, a the parameter value must be separated by a
        colon instead of a space. For consistency, this syntax is used for all
        parameters.
    #>
    $siteScriptContent = Get-SPOSiteScriptFromWeb `
        -WebUrl:$webUrl `
        -IncludedLists:$includedLists ´
        -IncludeBranding:$includeBranding `
        -IncludeTheme:$includeTheme
    ````

    If you are interested, you may save the the script to a file and review it, e.g.,

    ````powershell
    $siteScriptContent | Out-File sitetemplate.json
    ````

1. Upload the site script.

    ````powershell
    $title = '' # Between the quotes insert a unique name for the site script
    $siteScript = Add-SPOSiteScript -Title $title -Content $siteScriptContent
    ````

1. Create a list design using the script id returned from the previous step.

    ````powershell
    <#
        Use Get-SPOWebTemplate to identify possible values. Common values are:
        * STS#3 for a team site
        * SITEPAGEPUBLISHING#0 for a communiction site
    #>
    $webTemplate = 'STS#3'
    $description = $null # Replace with a string if required
    $thumbnailUrl = $null # Replace with a string if required
    $previewImageUrl = $null # Replace with a string if required
    $previewImageAltText = $null # Replace with a string if required
    $isDefault = $false # Optionally, set this to $true

    <# 
        You may use a different value for $title, if you want to name the
        list template differently from the site script.
    #>
    Add-SPOSiteDesign `
        -Title:$title `
        -WebTemplate:$webTemplate  `
        -SiteScripts:$siteScript.Id `
        -Description:$description `
        -ThumbnailUrl:$thumbnailUrl `
        -PreviewImageUrl:$previewImageUrl `
        -PreviewImageAltText:$previewImageAltText `
        -IsDefault:$isDefault
    ````

1. Disconnect from SharePoint Online.

    ```powershell
    Disconnect-SPOService
    ````

## References

[Custom list template - SharePoint in Microsoft 365  | Microsoft Learn](https://learn.microsoft.com/en-us/sharepoint/lists-custom-template)