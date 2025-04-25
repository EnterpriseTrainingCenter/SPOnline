# Practice: Block file types from syncing

## Setup

If you skipped Lab [Get started with SharePoint administration](/Instructions/Labs/Get-started-with-SharePoint-administration.md), in **PowerShell** or **Windows PowerShell**, execute **C:\LabResources\Solutions\Start-SharePointAndTeamsConfiguration.ps1**. If you are asked to sign in, use the global administrator credentials of your tenant.

## Task

Block the sync of PST files and Access databases.

## Instructions

Perform this task on WIN1.

1. Sign in to **WIN1** as **Administrator**.
1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Settings**.
1. In Settings, click **Sync**.
1. In the Sync pane, activate **Block upload of specific file types**. In the text area below type:

    ````text
    pst
    mdb
    accdb
    ````

    Click **Save**.
