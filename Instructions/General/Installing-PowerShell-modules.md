# Installing PowerShell modules

1. Run **Terminal**, **PowerShell**, or **Windows PowerShell** as Administrator.
1. In Terminal, ensure **Administrator: PowerShell** or **Administrator: Windows PowerShell** as appropriate. You can open a new tab for the other version by clicking the down chevron and selecting it.

    If you want to install a module capable of running on both versions, it is recommended to install it in Windows PowerShell.

1. Install a PowerShell module.

    ````powershell
    $name = '' # Insert the name of the module here
    Install-Module -Name $name
    ````

1. On the message Untrusted repository, enter **y**.

## References

[Install-Module (PowerShellGet) - PowerShell | Microsoft Learn](https://learn.microsoft.com/en-us/powershell/module/powershellget/install-module)
