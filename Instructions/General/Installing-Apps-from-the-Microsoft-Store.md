# Installing Apps from the Microsoft Store

## Desktop experience

1. Open the **Microsoft Store**.
1. In Microsoft Store, search for the name of the app you want to install.
1. In the search results, click the app.
1. On the app page, ensure, it is the correct app [figure 1] and click **Get**.

You do not have to wait for the installation to complete.

## Windows PowerShell

1. Run **Terminal** or **Windows PowerShell** as Administrator.
1. Find the app in the repository. Replace \<app-name\> with the name of the app you want to install

    ````shell
    winget search '<app-name>' 
    ````

    Notice the ID of the app in the source msstore.

    If you receive a warning,

    ````text
    Failed when searching source; results will not be included: msstore
    ````

    run the following command and retry.

    ````shell
    winget settings --enable BypassCertificatePinningForMicrosoftStore
    ````

1. Download and install the app. Replace \<app-id\> with the ID of the app you want to install

    ````shell
    winget install <app-id>
    ````

If, at any point, you receive a message Do you agree to all source agreements terms, enter **Y**.

If, at any point, you receive a message Do you agree to the terms, enter **Y**.

## References

[search Command | Microsoft Learn](https://learn.microsoft.com/en-us/windows/package-manager/winget/search)

[install Command | Microsoft Learn](https://learn.microsoft.com/en-us/windows/package-manager/winget/install)

[settings command | Microsoft Learn](https://learn.microsoft.com/en-us/windows/package-manager/winget/settings)
