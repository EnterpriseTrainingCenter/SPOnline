# Getting PowerShell commands

1. Run **Terminal**, **PowerShell**, or **Windows PowerShell** as Administrator.
1. In Terminal, ensure **Administrator: PowerShell** or **Administrator: Windows PowerShell** as appropriate. You can open a new tab for the other version by clicking the down chevron and selecting it.
1. Get the commands.

    * Of a PowerShell module

        ````powershell
        $name = '' # Insert the name of the module here
        Get-Command -Module $name
        ````

## References

[Get-Command (Microsoft.PowerShell.Core) - PowerShell | Microsoft Learn](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/get-command)