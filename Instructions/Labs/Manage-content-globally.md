# Lab: Manage content globally

## Setup

1. On **WIN1**, sign in as **Administrator**.
1. If you skipped Lab [Get started with SharePoint administration](/Instructions/Labs/Get-started-with-SharePoint-administration.md), in **PowerShell** or **Windows PowerShell**, execute **C:\LabResources\Solutions\New-Sites.ps1**. If you are asked to sign in, use the global administrator credentials of your tenant.
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

Contoso wants to use SharePoint as advanced document management systems. For this reason, you should implement a term store and test it with a term set for sales regions. Furthermore, content types for sales documents and contracts that include the sales region terms and additional columns should be created.

## Exercises

1. [Manage the term store](#exercise-1-manage-the-term-store)
1. [Manage content types](#exercise-2-manage-content-types)

## Exercise 1: Manage the term store

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

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Content services** and **Term store**.
1. In Term store, with **Taxononmy** selected in the left pane, in the right pane, beside **Admins**, click **Edit**.
1. In the Edit term store admins panel, find and click **Lynne Robbins** and click **Save**.

### Task 2: Add a term group

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Content services** and **Term store**.
1. In Term store, beside **Taxonomy**, click the ellipsis and **Add term group**. Enter **Sales**.
1. With the term group Sales selected, in the right pane, beside **Group managers**, click **Edit**.
1. In the Edit properties panel, find and click **Sales and Marketing Members**. Ensure that, beside **Sales and Marketing Members**, **Contributor** is selected and click **Save**.

### Task 3: Add a term set

Perform this task on WIN1.

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

Perform this task on WIN1.

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

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/USSales**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. On the U.S. Sales site, click the *Settings* icon (the gear icon) and **Site contents**.
1. In Contents, click **Documents**.
1. In Documents, click **Sales West** and **Signed Agreements**.
1. In Signed Agreements, in the context menu of **Fabrikam FY20 contract.pdf**, click **Details**.
1. In the details panel, under **Region**, click the icon right to the text field, select **USA** and click **Apply**. Alternatively, type **USA** and press ENTER or click it.

Repeat steps 7 and 8 for the remaining documents in the folder according to the table above.

## Exercise 2: Manage content types

1. [Grant permissions on the content type hub site](#task-1-grant-permissions-on-the-content-type-hub-site) to Lynne Robbins
1. [Create content types](#task-2-create-content-types):
    * **Sales document** based on the Document content type with an additional managed metadata column to select a Sales region
    * **Sales contract** based on Sales document with an additional currency column for the contract value.
1. [Add content types to a library](#task-3-add-content-types-to-a-library) in the U.S. Sales site
1. [Use content types](#task-4-use-content-types) in the U.S. Sales site by uploading a document and assigning it a content type and creating a new document from a content type

### Task 1: Grant permissions on the content type hub site

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/contentTypeHub**.
1. Sign in as global administrator.
1. In the Team site, click the icon *Settings* (the gear icon) and **Site permissions**.
1. In the Site permissions panel, click **Share site**.
1. Under Site access, find and click **Lynne Robbins**. Under **Lynne Robbins**, click **Read** and select **Full control**. Click **Add**.

### Task 2: Create content types

Perform this task on WIN1.

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

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/USSales**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. On the U.S. Sales site, click the *Settings* icon (the gear icon), **Site Information** and **View all site settings**.
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

Perform this task on WIN1.

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