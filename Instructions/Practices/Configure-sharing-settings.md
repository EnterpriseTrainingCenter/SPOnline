# Practice: Configure sharing settings

## Setup

If you skipped Lab [Get started with SharePoint administration](/Instructions/Labs/Get-started-with-SharePoint-administration.md), in **PowerShell** or **Windows PowerShell**, execute **C:\LabResources\Solutions\Start-SharePointAndTeamsConfiguration.ps1**. If you are asked to sign in, use the global administrator credentials of your tenant.

## Task

Configure the global sharing settings for Sharepoint and OneDrive as follows:

* Allow sharing to anyone
* Guests must sign in using the same account to which sharing invitations are sent
* Guests must not share content they don't own
* People who use a verification code must reauthenticate after 7 days
* The sharing default should be specific people and the default permissions should be view
* Anyone links should expire after 7 days
* Anyone links should allow view and edit on files, but view only on folders

## Instructions

Perform this task on LON-CL1.

1. Sign in to **LON-CL1** as **Administrator**.
1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Policies** and **Sharing**.
1. In Sharing configure these options and click **Save**. Do not change other options.

    * External sharing
        * Content can be shared with
            * SharePoint: **Anyone**
            * OneDrive: **Anyone**
            * More external sharing settings
                * Guests must sign in using the same account to which sharing invitations are sent: **Activate**
                * Allow guests to share items they don' own: **Deactivate**
                * People who use a verification code must reauthenticate after this many days: **Active** and set to **7**
    * Files and folder links
        * Choose the type of link that's selected by default when users share files and folders in SharePoint and OneDrive: **Specific people (only the people the user specifies)**
        * Choose the permission that's selected by default for sharing links: **View**
        * Choose expiration and permission options for Anyone links.
            * These links must expire within this many days: **Activate** and set to **7**
            * These links can give these permissions
                * Files: **View and edit**
                * Folders: **View**
