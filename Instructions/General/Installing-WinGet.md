# Installing WinGet

## Desktop experience

1. Open the **Microsoft Store**.
1. In Microsoft Store, in the left navigation bar, click **Library**.
1. In the Library, find **App Installer** and, beside, click **Update**.

    Wait for the update to complete.

## Windows PowerShell

1. Run **Terminal** or **Windows PowerShell** as Administrator.
1. Install the **Nuget** package provider.

    ````powershell
    Install-PackageProvider -Name NuGet -Force
    ````

1. From **PSGallery**, install the module **Microsoft.WinGet.Client**.

    ````powershell
    Install-Module -Name Microsoft.WinGet.Client -Force -Repository PSGallery
    ````

1. Repair the WinGet package manager

    ````powershell
    Repair-WinGetPackageManager -AllUsers
    ````

    You might get an error message like this:

    ```text
    Repair-WinGetPackageManager : One or more errors occurred.
    At line:1 char:1
    + Repair-WinGetPackageManager -AllUsers
    + ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        + CategoryInfo          : NotSpecified: (:) [Repair-WinGetPackageManager], AggregateException
        + FullyQualifiedErrorId : System.AggregateException,Microsoft.WinGet.Client.Commands.RepairWinGetPackageManagerCmdlet
    ````

    You can safely ignore this message. You can try to run the last command again. It should complete without errors.

    If you want to test the functionality of WinGet, you can run the command:

    ```shell
    winget --info
    ```

## References

[Use WinGet to install and manage applications | Microsoft Learn](https://learn.microsoft.com/en-us/windows/package-manager/winget/)
