# Applying a site template

## Web UI

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to the URL of the site.
1. Sign in as site owner, site admin, or SharePoint administrator.
1. In the site, click the *Settings* icon (the gear icon) and click **Apply a site template**.
1. In Apply a site template, click **From your organization** and click the template **\<Template name\>**.
1. Click **Use template**.

    Wait until the message that the template was applied successfully appears.

## PowerShell

1. In Windows PowerShell, connect to SharePoint Online.

    ````powershell
    $tenantName = '' # Between the quotes insert your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com"
    ````

1. Sign in as global administrator or SharePoint administrator.
1. Apply the site template to the site.

    ````powershell
    $siteDesignTitle = '' # Between the quotes insert the title of the site template
    $webUrl = '' # Between the quotes insert the URL of the site
    $siteDesign = Get-SPOSiteDesign | Where-Object Title -eq $siteDesignTitle
    Invoke-SPOSiteDesign -Identity:$siteDesign.Id -WebUrl:$webUrl
    ````

1. Disconnect from SharePoint Online.

    ````powershell
    Disconnect-SPOService
    ````

## References

[Use a site template | Microsoft Learn](https://learn.microsoft.com/en-us/sharepoint/dev/declarative-customization/site-design-overview)

[Invoke-SPOSiteDesign (Microsoft.Online.SharePoint.PowerShell) | Microsoft Learn](https://learn.microsoft.com/en-us/powershell/module/microsoft.online.sharepoint.powershell/invoke-spositedesign)
