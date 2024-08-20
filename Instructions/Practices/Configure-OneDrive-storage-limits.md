# Practice: Configure OneDrive storage limits

## Setup

If you skipped Lab [Get started with SharePoint administration](/Instructions/Labs/Get-started-with-SharePoint-administration.md), in **PowerShell** or **Windows PowerShell**, execute **C:\LabResources\Solutions\Start-SharePointAndTeamsConfiguration.ps1**. If you are asked to sign in, use the global administrator credentials of your tenant.

## Task

Set the default limit for OneDrive to 100 GB. Change the limit for Patti Fernandez to 5 TB.

## Instructions

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Settings**.
1. In Settings, click **Storage limit**.
1. In the Default storage limit pane, under **Default storage limit**, type **100** and click **Save**.
1. In Microsoft Edge, click the tab with the Microsoft 365 admin center.
1. In Microsoft 365 admin center, click **User** and **Active users**.
1. In Active users, click **Patti Fernandez**.
1. In the panel Patti Fernandez, click the tab **OneDrive**.
1. In the tab OneDrive, under **Storage used**, click **Edit**.
1. In the Edit storage limit panel, click **Maximum storage for this user**. Below, ensure **5120** is typed in the text field and click **Save**.
