# Enabling sensitivity label support in Entra ID

1. If necessary, install the **Microsoft.Graph** and the **Microsoft.Graph.Beta** PowerShell modules.

    ```powershell
    Install-Module -Name Microsoft.Graph
    Install-Module -Name Microsoft.Graph.Beta
    ```

1. Set the $MaximumFunctionCount to the maximum to ensure proper import of the Microsoft.Graph.Beta module.$

    ```powershell
    $MaximumFunctionCount = 32768
    ```

1. Connect to Microsoft graph.

    ```powershell
    Connect-MgGraph -Scopes 'Directory.ReadWrite.All'
    ```

    Sign in with a user holding the global administrator role and accept the permissions requested.

1. Enable the sensitivity labels.

    ```powershell
    $grpUnifiedSetting = Get-MgBetaDirectorySetting |
        Where-Object { $PSItem.Values.Name -eq 'EnableMIPLabels'}
    
    # Create the settings object, if not present
    if (-not $grpUnifiedSetting) {
        $TemplateId = (
            Get-MgBetaDirectorySettingTemplate |
            Where-Object { $PSItem.DisplayName -eq "Group.Unified" }
        ).Id
        New-MgBetaDirectorySetting -TemplateId $templateId
        $grpUnifiedSetting = Get-MgBetaDirectorySetting |
            Where-Object { $PSItem.Values.Name -eq 'EnableMIPLabels'}
    }

    # Update the setting
    $params = @{Values = @(@{ Name = "EnableMIPLabels"; Value = "True" })}
    Update-MgBetaDirectorySetting `
        -DirectorySettingId $grpUnifiedSetting.Id -BodyParameter $params
    ```

    You may have to sign in again with a global administrator.
    
1. Disconnect from Microsoft Graph.

    ```powershell
    Disconnect-MgGraph
    ```