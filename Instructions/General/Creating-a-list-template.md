# Creating a list template

1. In Windows PowerShell, connect to Sharepoint Online.

    ````powershell
    
    $tenantName = '' # Between the quotes insert your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com"
    ````

1. Sign in as global administrator or SharePoint administrator.
1. Extract a site script from the list.

    ````powershell
    <#
        Between the quotes insert the list URL.
        The list URL is the URL part left to the View name (AllItems.aspx).
        E.g., https://contoso.sharepoint.com/sites/MyTeamSite/Lists/MyCustomList
    #>
    $listUrl = ''
    $siteScriptContent = Get-SPOSiteScriptFromList -ListUrl $listUrl
    ````

    If you are interested, you may save the the script to a file and review it, e.g.,

    ````powershell
    $siteScriptContent | Out-File listtemplate.json
    ````

1. Upload the site script.

    ````powershell
    $title = '' # Between the quotes insert a unique name for the site script
    $siteScript = Add-SPOSiteScript -Title $title -Content $siteScriptContent
    ````

1. Create a list design using the script id returned from the previous step.

    ````powershell
    <# 
        You may use a different value for $title, if you want to name the
        list template differently from the site script.
    #>
    Add-SPOListDesign -Title $title -SiteScripts $siteScript.Id
    ````

1. Disconnect from SharePoint Online.

    ```powershell
    Disconnect-SPOService
    ````

## References

[Custom list template - SharePoint in Microsoft 365  | Microsoft Learn](https://learn.microsoft.com/en-us/sharepoint/lists-custom-template)