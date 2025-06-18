# Lab: Manage Search

## Setup

Sign in to **WIN1** as **Administrator**.

If you skipped Lab [Get started with SharePoint administration](/Instructions/Labs/Get-started-with-SharePoint-administration.md), in **PowerShell** or **Windows PowerShell**, execute **C:\LabResources\Solutions\Start-SharePointAndTeamsConfiguration.ps1**. If you are asked to sign in, use the global administrator credentials of your tenant.

## Introduction

Contoso wants to customize the search by adding definitions for acronyms, promoted links, office locations, and answers people often search for.

## Exercises

1. [Customize Microsoft Search](#exercise-1-customize-microsoft-search)
1. [Validate Microsoft Search customization](#exercise-2-validate-microsoft-search-customization)

## Exercise 1: Customize Microsoft Search

1. [Add an acronym](#task-1-add-an-acronym)

    | Property    | Value                                                                                                                          |
    | ----------- | ------------------------------------------------------------------------------------------------------------------------------ |
    | Acronym     | HR                                                                                                                             |
    | Stands for  | Human Resources                                                                                                                |
    | Description | Human resources (HR) is the set of people who make up the workforce of an organization, business sector, industry, or economy. |
    | Source      | https://\<your tenant\>.sharepoint.com/sites/HR                                                                                                                      |

1. [Add a bookark](#task-2-add-a-bookmark)

    | Property          | Value                                                                                                                   |
    | ----------------- | ----------------------------------------------------------------------------------------------------------------------- |
    | Title             | VPN Connection Procedure                                                                                                |
    | URL               | https://\<your tenant\>.sharepoint.com/sites/SalesAndMarketing/SitePages/New-VPN-Connection-Procedure.aspx              |
    | Description       | If you remote access to corporate resources, you need to check out Marketing's new simplified VPN connection procedure.​ |
    | Keywords          | connection; home office; remote; remote connection; remote work                                                         |
    | Reserved keywords | vpn; virtual private network                                                                                            |
    | Categories        | IT; Instruction                                                                                                         |

### Task 1: Add an acronym

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. Navigate to **https://admin.microsoft.com**.
1. Sign in using your Office 365 Tenant Credentials for the Global Admin.
1. In Microsoft 365 admin center, in the left navigation, click **Show all** and click **Settings**, **Search & intelligence**.
1. In Search & intelligence, click the tab **Answers**.
1. On the tab Answers, click **Acronyms** and click **Add an acronym**.
1. On the panel Add an acronym, fill the fields according to the table above and click **Publish**.

### Task 2: Add a bookmark

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. Navigate to **https://admin.microsoft.com**.
1. Sign in using your Office 365 Tenant Credentials for the Global Admin.
1. In Microsoft 365 admin center, in the left navigation, click **Show all** and click **Settings**, **Search & intelligence**.
1. In Search & intelligence, click the tab **Answers**.
1. On the tab Answers, click **Bookmarks** and click **Add bookmark**.
1. On the panel Add bookmark, fill the fields according to the table above and click **Publish**.

## Exercise 2: Validate Microsoft Search customization

[Test various search terms](#task-test-various-search-terms) for the acronyms, bookmarks, locations, and answers you provided.

### Task: Test various search terms

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