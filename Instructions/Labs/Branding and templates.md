# Lab: Branding and templates

## Setup

Perform this lab on WIN1.

1. If you skipped lab [Get started with SharePoint administration](/Instructions/Labs/Get-started-with-SharePoint-administration.md), in **PowerShell** or **Windows PowerShell**, execute **C:\LabResources\Solutions\Start-SharePointAndTeamsConfiguration.ps1**. If you are asked to sign in, use the global administrator credentials of your tenant.
1. If you skipped lab [Site administration](./Site-administration.md), execute **C:\LabResources\Solutions\New-Sites.ps1**. If you are asked to sign in, use the global administrator credentials of your tenant.
2. Open the Microsoft 365 Admin Center and sign in as with the global administrator (**admin@\<your tenant\>.onmicrosoft.com**).

## Introduction

Contoso wants to use custom fonts and colors in SharePoint Online sites. Contoso also wants to provide a library of images to be used in sites and pages. Moreover, Contoso wants to provide a template for the Microsoft 365 Apps for Enterprise from a central location.

## Exercises

1. [Configure SharePoint branding](#exercise-1-configure-sharepoint-branding)
1. [Create an organization images library](#exercise-2-create-an-organization-images-library)
1. [Create an organization templates library]
1. Manage list templates
1. Manage web site templates

## Exercise 1: Configure SharePoint branding

1. Set up a Brand Center site with the name **Brand Guide** and the address **BrandGuide**. Take a note of the brand center site's URL and the brand center app's URL. You can navigate to the brand center apps anytime later using the *Settings* menu of your brand center site [Figure 1].

    [Setting up Brand Center](../General/Setting-up-Brand-Center.md)

1. Add **Lynne Robbins** to the **Site Owners** group of **Brand Guide**.

    [Managing site groups](../General/Managing-site-groups.md)

1. Download fonts from Google Fonts and expand the ZIP file.

    * Sansation
    * Newsreader
    * Radley

    [Downloading Google Fonts](../General/Downloading-Google-Fonts.md)

1. Navigate to the site Brand Guide and ensure, you are signed in as **lynner@\<your tenant\>.onmicrosoft.com**.
1. Add the downloaded fonts to your brand center. You only need to add the ttf files from the top directory of the font. If there are fonts in any sub-directories like static, you need not to add them.

    [Managing fonts in brand center](../General/Managing-fonts-in-brand-center.md).

1. Add the following colors to your brand center.

    | Title           | Color code |
    |-----------------|------------|
    | Light sea green | #3ABBBC  |
    | Dark slate gray | #334A59  |
    | Gray            | #6C7B7B  |
    | White smoke     | #F8F9F9  |

1. Create a font package.

    * Name: **Contoso Electronics**
    * Display font: **Sansation**
    * Content font: **Radley**

    | Element     | Font      | Style   |
    |-------------|-----------|---------|
    | Title       | Sansation | Regular |
    | Headline    | Sansation | Regular |
    | Body        | Radley    | Regular |
    | Interactive | Sansation | Bold    |

    [Managing font packages in brand center](../General/Managing-font-packages-in-brand-center.md)

1. Create a theme with the name **Contoso Electronics**. As the primary color use **Light sea green**. As the secondary color use **Dark slate gray**.

1. Apply the theme **Contoso Electronics** and the font package **Contoso Electronics** to the site **Mark 8 Project team**.

    [Changing the look of a site](../General/Chaning-the-look-of-a-site.md)

[Figure 1]:../../images/Brand-center-in-settings.png

## Exercise 2: Create an organization images library

1. In the site **Brand Guide**, create an organization assets library for images with the name **Organization images**.

    [Managing organization asssets libraries](../General/Managing-organization-assets-libraries.md)

1. In a new tab, navigate to **https://en.wikipedia.org/wiki/Cat** and save some pictures locally in a folder named **Cats**. 
1. Navigate to **https://en.wikipedia.org/wiki/Dog** and save some pictures locally in a folder named **Dogs**.
1. Upload the pictures the whole folders **Cats** and **Dogs** to the document library **Organization Images**. The document library should contain the folders Dogs and Cats at the top level after the upload.
1. In the site **Mark 8 Project Team**, create a new blank page with the title **Cats and dogs**. Change the banner image and select a picture from **Organization Images**.

## Exercise 3: Create an organization templates library

1. In the site **Brand Guide**, create an organization templates library for templates with the name **Organization templates**.

    [Managing organization asssets libraries](../General/Managing-organization-assets-libraries.md)

1. In the library **Organization templates**, create folders:

    * **Document templates**
    * **Presentation templates**

1. In **Microsoft Word**, sign in a **Lynne Robbins**. Create a new document with the template **Memo (simple design)**. In the document replace **COMPANY NAME** with **CONTOSO**. Save the file as type **Word Template (\*.dotx)** to the library **Organization templates** in folder **Document templates** with the name **Memo**.
1. In **Microsoft PowerPoint**, sign in a **Lynne Robbins**. Create a new presentation with the template **Minimalist presentation**. Customize the template as desired. Save the file as type **PowerPoint Template (\*.potx)** to the library **Organization templates** in folder **Presentation templates** with the name **Basic presentation**.
1. In **Microsoft Word**, create a new document using the template **Memo** you just created.
1. In **Microsoft PowerPoint**, create a new document using the template **Basic presentation** you just created.

## Exercise 4: Create an organization fonts library

1. In the site **Brand Guide**, create an organization templates library for templates with the name **Office Fonts**.

    [Managing organization asssets libraries](../General/Managing-organization-assets-libraries.md)

1. In the library **Office Fonts**, upload the downloaded fonts from exercise 1. You only need to add the ttf files from the top directory of the font. If there are fonts in any sub-directories like static, you need not to add them.

1. Open **PowerPoint Online**. Create a new presentation using the template **Basic presentation**. Select some text. Change the font to any of the uploaded fonts.

    **Important:** It can take up to 24 hours until uploaded fonts are available. If you do not see the uploaded fonts, check back later.

## Exercise 5: Create a list template

1. Create a list using the **Expense tracker** in **My Lists** accepting the defaults.

    [Creating a list](../General/Creating-a-list.md)

1. In the list Expense tracker, add a column of type **Choice** with the name **Approval**. The options should be:

    * **Pending**
    * **Approved**
    * **Rejected**

    The default value should be **Pending** and the column should be required to contain information.

    If time allows, you may add some lines to the list, if you want to try the functionality.

1. Create a custom list template from the Expense tracker list with the name **Contoso Expense Tracker**.

    [Creating a list template](../General/Creating-a-list-template.md)

1. Create a new list using the **Contoso Expense Tracker** on **Mark 8 Project site**.

## Exercise 6: Crate a web site template

1. From the Mark 8 Project site create a web site template. Include the list **Contoso Expense Tracker**, branding, and the theme. The name of the new template should be **Project site**.

1. Create a new site from the template.
1. Apply the template to the site **SharePoint Playground**.