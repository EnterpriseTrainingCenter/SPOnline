# Lab: Manage content globally

## Setup

1. On **LON-CL1**, sign in as **Administrator**.
1. Open **Microsoft Edge**.
1. Navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Sites**, **Active sites**.
1. In Active sites, select **U.S. Sales** and, on the toolbar, click **Membership**.
1. In the U.S. Sales panel on the tab Membership, click **Site admins**.
1. In Site admins, click **Add site admins**.
1. In the panel Add sites admins to site U.S. Sales, find and click **Lynne Robbins**. Click **Add (1)**.
1. Close the panel.

## Introduction

Contoso wants to have unified locations for Office templates and pictures for pages.

Moreover, Contoso wants to use SharePoint as advanced document management systems. For this reason, you should implement a term store and test it with a term set for sales regions. Furthermore, content types for sales documents and contracts that include the sales region terms and additional columns should be created.

## Exercises

1. [Manage organization assets libraries](#exercise-1-manage-organization-assets-libraries)
1. [Manage the term store](#exercise-2-manage-the-term-store)
1. [Manage content types](#exercise-3-manage-content-types)

## Exercise 1: Manage organization assets libraries

1. [Create a communication site](#task-1-create-a-communication-site) for organization assets
1. [Grant permission](#task-2-grant-permission) read to Everyone except guest users on the organization assets site
1. [Create libraries](#task-3-create-libraries) for templates and images in the organization assets site
1. [Add the organization assets libraries](#task-4-add-the-organization-assets-libraries)
1. [Create organizational templates](#task-5-create-organizational-templates): Create folders in the templates library and create some office templates within the folders
1. [Create organizational images](#task-6-create-organizational-images): Crete folders in the images library and add some pictures
1. [Use organizational templates](#task-7-use-organizational-templates)
1. [Use organizational images](#task-8-use-organizational-images)

### Task 1: Create a communication site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Sites**, **Active sites**.
1. In Active sites, click **Create**.
1. In Create a site: Select the site type, click **Communication site**.
1. In Select a template, click **Standard communication**.
1. In Preview and use 'Standard communication' template, click **Use template**.
1. In Give your site a name, under **Site name**, type **Organization assets**. Under **Site description**, type **Site for organization templates and images**. Under **Site address** address, type **OrgAssets**. Under **Site owner**, find and click **Lynne Robbins**. Click **Next**.
1. In Set language and other options, under **Select a language**, ensure **English** is selected. Under **Time zone**, select your time zone. Click **Create site**.
1. In Add site owners and members, click **Finish**.

### Task 2: Grant permission

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/OrgAssets**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In the site Organization Assets, click the *Settings* icon (the gear icon) and click **Site permissions**.
1. In the Permissions panel, click **Share site**.
1. Under Site access, find and click **Everyone except eternal users**. Under **Everyone except external users**, ensure **Read** is selected. Click **Add**.

### Task 3: Create libraries

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/OrgAssets**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In the site Organization Assets, click the *Settings* icon (the gear icon) and click **Site contents**.
1. In Contents, click **New** and **Document library**.
1. In Create new document library, click **Blank library**.
1. Under **Name**, type **Templates** and click **Create**.
1. Repeat from step 4 to create another library with the name **Images**.

### Task 4: Add the organization assets libraries

Perform this task on LON-CL1.

1. Open **Terminal**.
1. In Terminal, click the down chevron and click **Windows PowerShell**.
1. Connect to Sharepoint Online.

    ````powershell
    
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com"
    ````

1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Add the templates library as organizational Office templates library.

    ````powershell
    Add-SPOOrgAssetsLibrary `
        -LibraryUrl `
            https://$tenantName.sharepoint.com/sites/OrgAssets/Templates `
        -OrgAssetType OfficeTemplateLibrary `
        -CdnType Public
    ````

1. On the message Performing the operation "Enable Tenant CDN with the default locations" on target "Public CDN", enter **Y**.
1. Add the images library as organizational images library.

    ````powershell
    Add-SPOOrgAssetsLibrary `
        -LibraryUrl `
            https://$tenantName.sharepoint.com/sites/OrgAssets/Images1 `
        -OrgAssetType ImageDocumentLibrary `
        -CdnType Public
    ````

1. On the message Are you sure you want to perform this action?, enter **Y**.

### Task 5: Create organizational templates

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/OrgAssets**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In the site Organization Assets, click the *Settings* icon (the gear icon) and click **Site contents**.
1. In Contents, click **Templates**.
1. In Templates, click **New**, **Folder**.
1. In Create a folder, under **Name**, type **Document templates** and click **Create**.
1. Repeat from step 6 to create another folder with the name **Presentation templates**.
1. Open **Word**.
1. If necessary, sign in to Word as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Word, click **New**.
1. In New, click the template **Memo (simple design)**
1. On Memo (simple design), click **Create**.
1. In the document, replace **COMPANY NAME** with **CONTOSO**.
1. Click **File**, **Save As**.
1. In Save As, click **Sites - Contoso** and click **Organization assets**. In **Enter file name here**, type **Memo** and below, as file type, select **Word Template (\*.dotx)**. Below, click **Templates** and **Document templates**. Click **Save**.
1. Close Word.
1. Open **PowerPoint**.
1. In PowerPoint, click **New**.
1. In New, click the template **Minimalist presentation**.
1. On Minimalist presentation, click **Create**.

    You may customize the template a little.

1. Click **File**, **Save As**.
1. In Save As, click **Sites - Contoso** and click **Organization assets**. In **Enter file name here**, type **Basic presentation** and below, as file type, select **PowerPoint Template (\*.potx)**. Below, click **Templates** and **Presentation templates**. Click **Save**.
1. Close PowerPoint.

### Task 6: Create organizational images

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/OrgAssets**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In the site Organization Assets, click the *Settings* icon (the gear icon) and click **Site contents**.
1. In Contents, click **Images**.
1. In Templates, click **New**, **Folder**.
1. In Create a folder, under **Name**, type **Cats** and click **Create**.
1. Repeat from step 6 to create another folder with the name **Dogs**.
1. In Microsoft Edge, open a new tab and navigate to **https://en.wikipedia.org/wiki/Cat**.
1. Save some pictures from the page locally on LON-CL1.
1. Navigate to **https://en.wikipedia.org/wiki/Dog**.
1. Save some pictures from the page locally on LON-CL1.
1. In Microsoft Edge, click the tab **Organization assets**.
1. In the library Images, click the folder **Cats**.
1. In the folder Cats, click **Upload**, **Files**.
1. In Open, select the cat pictures you saved before and click **Open**.
1. In the folder **Cats**, navigate back to **Images** and to the folder **Dogs**.
1. In the folder Dogs, click **Upload**, **Files**.
1. In Open, select the cat pictures you saved before and click **Open**.

### Task 7: Use organizational templates

Perform this task on LON-CL1.

1. Open **Word**.
1. In Word, click **New**.
1. In New, click the tab **Contoso**.
1. On the tab Contoso, click **Document templates** and click **Memo**.

    Verify that a new document is created using your custom template.

1. Open **PowerPoint**.
1. In PowerPoint, click **New**.
1. In New, click the tab **Contoso**.
1. On the tab Contoso, click **Presentation templates** and click **Basic presentation**.

    Verify that a new presentation is created using your custom template.

### Task 8: Use organizational images

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/OrgAssets**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In the site Organization Assets, click the *Settings* icon (the gear icon) and click **Add a page**.
1. If the dialog **Welcome!** appears, click **I've done this before** and **Let's go**.
1. In page templates, click **Blank** and **Create page**.
1. Click **Add a title** and type **Cats & Dogs**.
1. Click the banner image and, on the floating toolbar, click **Browse images**.
1. In the image browser, click **Your organization** and click **Images**.
1. In Images click either **Cats** or **Dogs**, select an image and click **Select**.
1. Click **Save as draft**.

## Exercise 2: Manage the term store

1. [Configure term store permissions](#task-1-configure-term-store-permissions) by adding Lynne Robbins as admin
1. [Add a term group](#task-2-add-a-term-group) Sales and grant the group Sales and Marketing members the Contribute permission
1. [Add a term set](#task-3-add-a-term-set) Region to the term group Sales and add terms:

    * Europe
        * Central Europe
        * East Europe
        * North Europe
        * South Europe
        * West Europe
    * North America
        * Canada
        * USA

1. [Add a managed metadata column](#task-4-add-a-managed-metadata-column) for the Region term set to the documents library in the site U.S. Sales. Only terms in the North America region should be selectable.
1. [Add terms to documents](#task-5-add-terms-to-documents) in the folder Signed Agreements in Sales West of the document library in site U.S. Sales

    | Document                      | Region |
    | ----------------------------- | ------ |
    | Fabrikam FY20 Contract.pdf    | USA    |
    | Litware FY20 Contract.pdf     | USA    |
    | Northwind FY17 Contract.pdf   | Canada |
    | Northwind FY18 Contract.pdf   | Canada |
    | Tailspin FY20 Contract.pdf    | USA    |

### Task 1: Configure term store permissions

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Content services** and **Term store**.
1. In Term store, with **Taxononmy** selected in the left pane, in the right pane, beside **Admins**, click **Edit**.
1. In the Edit term store admins panel, find and click **Lynne Robbins** and click **Save**.

### Task 2: Add a term group

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Content services** and **Term store**.
1. In Term store, beside **Taxonomy**, click the ellipsis and **Add term group**. Enter **Sales**.
1. With the term group Sales selected, in the right pane, beside **Group managers**, click **Edit**.
1. In the Edit properties panel, find and click **Sales and Marketing Members**. Ensure that, beside **Sales and Marketing Members**, **Contributor** is selected and click **Save**.

### Task 3: Add a term set

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Content services** and **Term store**.
1. In Term store, beside **Sales**, click the ellipsis and click **Add term set**. Enter **Regions**.
1. Beside **Regions**, click the ellipsis and click **Add term**. Enter **North America**. Repeat this step to add the term **Europe**.
1. Beside **North America**, click the ellipsis and click **Add term**. Enter **Canada**. Repeat this step to add the term **USA**.
1. Beside **Europe**, click the ellipsis and click **Add term**. Enter **North Europe**. Repeat this step to add the terms **West Europe**, **Central Europe**, **South Europe** and **East Europe**.
1. Select **Europe** and click the tab **Usage settings**.
1. On the tab Usage settings, beside **Available for Tagging** click **Edit**.
1. In the panel Available for tagging, deactivate **Enable** and cick **Save**.

Repeat from step 10 for the term **North America.**

### Task 4: Add a managed metadata column

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/USSales**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. On the U.S. Sales site, click the *Settings* icon (the gear icon) and **Site contents**.
1. In Contents, click **Documents**.
1. In Documents, click **Add column**.
1. In the Create a column fly-out, click **Managed metadata** and **Next**.
1. In the Create a column panel, under **Name**, type **Region**. Under **Term set or term**, click **Select**.
1. In the Select term set or term panel, expand **Sales**, **Region** and select **North America**. Click **Save**.
1. In the **Create a column** panel, click **Save**.

### Task 5: Add terms to documents

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/USSales**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. On the U.S. Sales site, click the *Settings* icon (the gear icon) and **Site contents**.
1. In Contents, click **Documents**.
1. In Documents, click **Sales West** and **Signed Agreements**.
1. In Signed Agreements, in the context menu of **Fabrikam FY20 contract.pdf**, click **Details**.
1. In the details panel, under **Region**, click the icon right to the text field, select **USA** and click **Apply**. Alternatively, type **USA** and press ENTER or click it.

Repeat steps 7 and 8 for the remaining documents in the folder according to the table above.

## Exercise 3: Manage content types

1. [Grant permissions on the content type hub site](#task-1-grant-permissions-on-the-content-type-hub-site) to Lynne Robbins
1. [Create content types](#task-2-create-content-types):
    * **Sales document** based on the Document content type with an additional managed metadata column to select a Sales region
    * **Sales contract** based on Sales document with an additional currency column for the contract value.
1. [Add content types to a library](#task-3-add-content-types-to-a-library) in the U.S. Sales site
1. [Use content types](#task-4-use-content-types) in the U.S. Sales site by uploading a document and assigning it a content type and creating a new document from a content type

### Task 1: Grant permissions on the content type hub site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/contentTypeHub**.
1. Sign in as global administrator.
1. In the Team site, click the icon *Settings* (the gear icon) and **Site permissions**.
1. In the Site permissions panel, click **Share site**.
1. Under Site access, find and click **Lynne Robbins**. Under **Lynne Robbins**, click **Read** and select **Full control**. Click **Add**.

### Task 2: Create content types

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Content services** and **Content type gallery**.
1. In Content type gallery, click **Create content type**.
1. In the Create content type panel, under **Name**, type **Sales document**. Under **Description**, type **Based on the Document content type, adds a managed metadata column for the sales region**. Under **Category**, click **Create a new category**. Under **Category name**, type **Sales Content Types**. Under **Parent content type**, under **Parent category**, select **Document Content Types**. Under **Content Type**, select **Document**. Click **Create**.
1. In Sales document, click **Add site column** and **Create new site column**
1. In the Create new site column panel, under **Name**, type **Sales Region**. Under **Description**, type **Select from the Region term set**. Under **Category**, click **Create a new category**. Under **New category name**, type **Sales columns**. Under **Type**, select **Managed Metadata**. Under **Select term set**, click **Select**.
1. In the Manage term set panel, expand **Sales**, select **Regions** and click **Save**.
1. In the **Create new site column** panel, click **Save**.
1. In **Sales document**, click **Publish**.
1. In the panel Manage Publishing, ensure **Publish** or **Republish** is selected and click **Save**.
1. Click **Content type gallery**.
1. In Content type gallery, click **Create content type**.
1. In the Create content type panel, under **Name**, type **Sales contract**. Under **Description**, type **Based on the Sales document content type, adds a currency column Value**. Under **Category**, ensure **Use an existing category** is selected. Under **Name**, select **Sales Content Types**. Under **Parent content type**, under **Parent category**, select **Sales Content Types**. Under **Content Type**, ensue **Sales document** is selected. Click **Create**.
1. In Sales contract, click **Add site column** and **Create new site column**
1. In the Create new site column panel, under **Name**, type **Value**. Under **Description**, type **Total monetary value of the sales contract**. Under **Category**, ensue **Use existing category is selected**. Under **Category**, select **Sales columns**. Under **Type**, select **Currency**. Click **Save**.
1. In **Sales document**, click **Publish**.
1. In the panel Manage Publishing, ensure **Publish** or **Republish** is selected and click **Save**.

### Task 3: Add content types to a library

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/USSales**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. On the U.S. Sales site, click the *Settings* icon (the gear icon) and **Site settings**.
1. In Site Settings, under **Site Collection Administration**, click **Content type publishing**.
1. In Content Type Publishing hubs, beside **Hubs**, ensure the URL of the content type hub site from [Task 1](#task-1-grant-permissions-on-the-content-type-hub-site) is shown. Click **Content type publishing error log**.

    Ensure, **404 NOT FOUND** is the result.

1. In Microsoft Edge, click the *Back* icon twice.
1. In **Site Settings**, click **Site content types**.

    In Content type gallery of U.S. Sales, ensure Sales document and Sales contract are listed.

1. In Content type gallery, glick U.S. Sales to return to the site home page.
1. On the U.S. Sales site, click the *Settings* icon (the gear icon) and **Site contents**.
1. In Contents, click **Documents**.
1. In Documents, click **Add column**.
1. In the Create column fly-out, click **Add a content type** and click **Next**.
1. In the Add content type panel, under **Choose content type**, select **Sales contract** and **Sales document** and click **Apply**.

### Task 4: Use content types

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/USSales**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. On the U.S. Sales site, click the *Settings* icon (the gear icon) and **Site contents**.
1. In Contents, click **Documents**.
1. In Documents, click **Sales West**.
1. In Sales West, click **Signed Agreements**.
1. In Signed Agreements, select **Fabrikam FY20 contract.pdf** and, on the toolbar, click **Download**.
1. Click **Documents** to navigate two levels up.
1. In Documents, click **Sales East**.
1. In Sales East, click **Upload**, **Files**
1. In the dialog **Open**, navigate to the folder **Downloads**, select **Fabrikam FY20 contract.pdf** and click **Open**.

    Wait for the upload to complete.

1. In the context-menu of **Fabrikam FY20 contract.pdf**, click **Details**.
1. In the details panel, under **Content type**, select **Sales contract**. Under **Sales Region**, enter or select a region of your choice. Under **Value**, type **100000** and press ENTER.
1. On the toolbar, click **New** and **Sales document**.
1. In the message box The document you are trying to open is a template..., click **Yes**.
1. Type **=lorem()** and press ENTER to generate some text.
1. Close the tab with the Word document.
1. Back in **Sales East**, in the context menu of **Document.docx**, click **Details**.

    Ensure, the content type is Sales document. You may select a Sales region for the document, if you want.