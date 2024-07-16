# Practice: Block file types from syncing

## Task

Block the sync of PST files and Access databases.

## Instructions

Perfrom this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
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