# Lab: Manage Search

## Setup

1. Sign in to **WIN1** as **Administrator**.
1. If you skipped Lab [Get started with SharePoint administration](/Instructions/Labs/Get-started-with-SharePoint-administration.md), in **PowerShell** or **Windows PowerShell**, execute **C:\LabResources\Solutions\Start-SharePointAndTeamsConfiguration.ps1**. If you are asked to sign in, use the global administrator credentials of your tenant.
1. Open the **Microsoft 365 admin center** (<https://admin.microsoft.com>) and sign in as the global administrator.

## Introduction

Contoso wants to customize the search by adding definitions for acronyms, promoted links, office locations, and answers people often search for.

## Exercises

1. [Specify a search administrator](#exercise-1-specify-a-search-administrator)
1. [Customize Microsoft Search](#exercise-2-customize-microsoft-search)
1. [Validate Microsoft Search customization](#exercise-3-validate-microsoft-search-customization)

## Exercise 1: Specify a search administrator

1. Assign **Lynne Robbins** the role **Search Administrator**.

    [Assigning an Entra ID role](../General/Assigning-an-Entra-ID-role.md).

1. Sign out of Microsoft 365 Admin center and sign in again as **lynner@\<your tenant\>.

## Exercise 2: Customize Microsoft Search

1. Add an acronym to Microsoft Search.

    | Property    | Value                                                                                                                          |
    | ----------- | ------------------------------------------------------------------------------------------------------------------------------ |
    | Acronym     | HR                                                                                                                             |
    | Stands for  | Human Resources                                                                                                                |
    | Description | Human resources (HR) is the set of people who make up the workforce of an organization, business sector, industry, or economy. |
    | Source      | https://\<your tenant\>.sharepoint.com/sites/HR                                                                                                                      |
    [Managing acronyms in search](../General/Managing-acronyms-in-search.md)

1. Add a bookark to Microsoft Search.

    | Property          | Value                                                                                                                   |
    | ----------------- | ----------------------------------------------------------------------------------------------------------------------- |
    | Title             | VPN Connection Procedure                                                                                                |
    | URL               | https://\<your tenant\>.sharepoint.com/sites/SalesAndMarketing/SitePages/New-VPN-Connection-Procedure.aspx              |
    | Description       | If you remote access to corporate resources, you need to check out Marketing's new simplified VPN connection procedure.​ |
    | Keywords          | connection; home office; remote; remote connection; remote work                                                         |
    | Reserved keywords | vpn; virtual private network                                                                                            |
    | Categories        | IT; Instruction                                                                                                         |

    [Managing bookmarks in search](../General/Managing-bookmarks-in-search.md)

## Exercise 3: Validate Microsoft Search customization

1. Search for HR.

    You should see a the translation and a short description.

1. Search for

    * VPN Connection Procedure
    * connection
    * home office
    * remote
    * remote connection
    * remote work
    * vpn
    * virtual private network

    In all cases, you should see the bookmark with a short description and the link to the VPN Connection Procedure.