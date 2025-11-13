# Lab: Branding and templates

## Introduction

Contoso wants to use custom fonts and colors in SharePoint Online sites. Contoso also wants to provide a library of images to be used in sites and pages. Moreover, Contoso wants to provide a template for the Microsoft 365 Apps for Enterprise from a central location.

## Exercises

1. Configure SharePoint branding
1. Manage organization assets libraries
1. Manage list templates
1. Manage web site templates

## Exercise 1: Configure SharePoint branding

1. Set up a Brand Center site with the name **Brand Guide** and the address **BrandGuide**. Take a note of the brand center site's URL and the brand center app's URL. You can navigate to the brand center apps anytime later using the *Settings* menu of your brand center site [Figure 1].

    [Setting up Brand Center](../General/Setting-up-Brand-Center.md)

2. Download fonts from Google Fonts and expand the ZIP file.

    * Sansation
    * Newsreader
    * Radley

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

1. Create a theme with the name **Contoso Electronics**. As the primary color use **Dark slate gray**. As the secondary color use **White smoke**.

1. Apply the theme **Contoso Electronics** and the font package **Contoso Electronics** to the site **Mark 8 Project team**.

    [Changing the look of a site](../General/Chaning-the-look-of-a-site.md)

[Figure 1]:../../images/Brand-center-in-settings.png

