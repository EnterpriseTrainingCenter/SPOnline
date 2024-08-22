# Practice: Setup

## Task

On LON-CL1, update the Microsoft Store app, install the lab resources and solutions and install the Microsoft 365 apps for Enterprise.

## Instructions

1. Sign in to LON-CL1 as Administrator.
1. Open the **Microsoft Store**.
1. In Microsoft Store, click Update Now.

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
1. Navigate to **https://www.microsoft365.com**.
1. On Login | Microsoft 365, click **Sign in**.
1. Sign in using your Office 365 Tenant Credentials for the Global Admin.
1. On Home | Microsoft 365, in the top-right corner, click **Install and more** and **Install Microsoft 365 apps**.
1. On My Account, under **Office apps & devices**, click **Install Office**.
1. In Downloads, under **OfficeSetup.exe**, click **Open file**.

The Microsoft 365 Apps for Enterprise will be installed. This will take a few minutes. You do not have to wait for the setup to complete.
