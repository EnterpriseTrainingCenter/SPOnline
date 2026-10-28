# Creating a site

## SharePoint admin center

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as global administrator or SharePoint administrator.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Sites**, **Active sites**.
1. In Active sites, click **Create**.
1. In Create a site: Select the site type, click **Team site** or **Communication site**.
1. In Select a template, click **From your organization** and click the template **\<Template name\>**.

    If you do not want to use a template, click one of the templates provided by Microsoft instead, e.g., **Standard team**.

1. In Preview and use '\<Template name\>' template, click **Use template**.
1. In Give your site a name, under **Site name**, type **\<Site name\>**. Click **Next**.
1. In Set language and other options, under **Select a language**, select the language and under **Time zone**, select your time zone. Click **Create site**.
1. If you create a team site, in Add site owners and members, add the owners and members and click **Finish**.

## SharePoint Online module

1. Open **Windows PowerShell** or **Terminal**.
1. In Windows Terminal, ensure **Windows PowerShell** is shown at the top. You can open a new tab for PowerShell by clicking the down chevron and selecting **Windows PowerShell**.
1. Connect to SharePoint Online.

    ````powershell
    $tenantName = '' # Between the quotes, insert your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com"
    ````

1. Sign in as global administrator or SharePoint administrator.
1. Create the site.

    ````powershell
    $siteUrl = '' # Between the quotes, insert the URL of the new site
    $title = '' # Between the quotes, insert the site name
    $owner = '' # Between the quotes, insert the user name of the site owner
    $storageQuota = 1024 # Storage quota in MB
    <#
        Use Get-SPOWebTemplate to identify possible values. Common values are:
        * STS#3 for a team site without a Microsoft 365 group
        * SITEPAGEPUBLISHING#0 for a communication site
    #>
    $template = 'STS#3'

    New-SPOSite `
        -Url:$siteUrl `
        -Title:$title `
        -Owner:$owner `
        -StorageQuota:$storageQuota `
        -Template:$template
    ````

    *Note:* `New-SPOSite` does not create a Microsoft 365 group and cannot apply a site template. To apply a site template to the new site, see [Applying a site template](../General/Applying-a-site-template.md).

1. Disconnect from SharePoint Online.

    ````powershell
    Disconnect-SPOService
    ````

## PnP PowerShell module

1. Open **PowerShell** or **Terminal**.
1. In Windows Terminal, ensure **PowerShell** is shown at the top. You can open a new tab for PowerShell by clicking the down chevron and selecting **PowerShell**.
1. Connect to SharePoint using the PnP PowerShell module.

    ````powershell
    $tenantName = '' # Between the quotes, insert your tenant name
    Connect-PnPOnline -Url "https://$tenantName-admin.sharepoint.com" -Interactive
    ````

1. Sign in as global administrator or SharePoint administrator.
1. Create the site.

    To create a team site:

    ````powershell
    $title = '' # Between the quotes, insert the site name
    $alias = '' # Between the quotes, insert the mail nickname of the Microsoft 365 group
    $owner = '' # Between the quotes, insert the user name of the site owner

    New-PnPSite `
        -Type:TeamSite `
        -Title:$title `
        -Alias:$alias `
        -Owners:$owner
    ````

    To create a communication site:

    ````powershell
    $title = '' # Between the quotes, insert the site name
    $siteUrl = '' # Between the quotes, insert the URL of the new site

    New-PnPSite `
        -Type:CommunicationSite `
        -Title:$title `
        -Url:$siteUrl
    ````

    *Note:* To apply a site template to the new site, see [Applying a site template](../General/Applying-a-site-template.md).

1. Disconnect from SharePoint.

    ````powershell
    Disconnect-PnPOnline
    ````

## References

[Create a site in the SharePoint admin center | Microsoft Learn](https://learn.microsoft.com/en-us/sharepoint/create-site-in-admin-center)

[New-SPOSite (Microsoft.Online.SharePoint.PowerShell) | Microsoft Learn](https://learn.microsoft.com/en-us/powershell/module/microsoft.online.sharepoint.powershell/new-sposite)

[New-PnPSite | PnP PowerShell](https://pnp.github.io/powershell/cmdlets/New-PnPSite.html)
