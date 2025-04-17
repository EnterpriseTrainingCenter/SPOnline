# Practice: Install Visual Studio Code

## Setup

On WIN1, sign in as Administrator.

If you skipped Lab [Get started with SharePoint administration](/Instructions/Labs/Get-started-with-SharePoint-administration.md), in **PowerShell** or **Windows PowerShell**, execute **C:\LabResources\Solutions\Start-SharePointAndTeamsConfiguration.ps1**. If you are asked to sign in, use the global administrator credentials of your tenant.

## Task

On WIN1, install Visual Studio Code.

## Instructions

### Desktop Experience

Perform this task on WIN1.

1. Open **Microsoft Store**.
1. In Microsoft store, search for **Visual Studio Code**.
1. On the Visual Studio Code page, click **Install**.

    Wait for the installation to complete. This will take around 2 minutes.

### PowerShell

Perform this task on WIN1.

1. Open **Terminal**.
1. In Terminal, find **Visual Studio Code** in the respository.

    ````powershell
    winget search 'Visual Studio Code'
    ````

    Notice the ID of Visual Studio Code (not Insiders) in the source msstore.

1. Download and install **Visual Studio Code**.

    ````powershell
    winget install XP9KHM4BK9FZ7Q
    ````

1. On the mesage Do you agree to the terms, enter **Y**.
