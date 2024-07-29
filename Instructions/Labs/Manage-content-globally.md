# Lab: Manage content globally

On **LON-CL1**, sign in as **Administrator**.

## Introduction

## Exercises

1. [Manage organization assets libraries](#exercise-1-manage-organization-assets-libraries)
1. Manage the term store
1. Manage content types

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

1. Configure term store permisions
1. Create a term group
1. Create a term set
1. Add a managed metadata column
1. Add terms to documents

## Exercise 3: Manage content types

1. Create content types
1. Add content types to a library
1. Use content types