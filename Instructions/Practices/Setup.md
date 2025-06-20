# Practice: Setup

## Task

On WIN1, update the Microsoft Store app, install the lab resources and solutions and install the Microsoft 365 apps for Enterprise.

## Instructions

1. Sign in to WIN1 as Administrator.
1. Open the **Microsoft Store**.
1. If Microsoft Store shows a message **Pardon the interruption**, click Update Now.

    Do not wait for the update to complete. Continue with the next steps.

1. Open **Windows PowerShell**.
1. In Windows Powershell, install the lab resources and solutions by executing the following commands.

    ````powershell
    Start-BitsTransfer `
        -Source `
            'https://github.com/EnterpriseTrainingCenter/SPOnline-solutions/archive/refs/heads/main.zip' `
        -Dynamic
    Unblock-File 'main.zip'
    Expand-Archive 'main.zip' -Force
    Copy-Item `
        -Path '.\main\SPOnline-solutions-main\LabResources\' `
        -Destination 'c:\' `
        -Container `
        -Recurse `
        -Force
    ````

1. Open **Microsoft Edge**.
1. Navigate to **https://m365.cloud.microsoft.com**.
1. On Login | Microsoft 365 Copilot, click **Sign in**.
1. Sign in using your Office 365 Tenant Credentials for the Global Admin.
1. On Copilot | Microsoft 365 Copilot, in the bottom-left corner, click your username and **My Microsoft 365 profile**.
1. On My Account, under **Office apps & devices**, click **Install Office**.
1. In Downloads, under **OfficeSetup.exe**, click **Open file**.

The Microsoft 365 Apps for Enterprise will be installed. This will take a few minutes. You do not have to wait for the setup to complete.
