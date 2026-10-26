# Enabling audit log search

## Web UI

1. Navigate to **https://purview.microsoft.com**.

    If the dialog **Welcome to the new Microsoft Purview portal** appears, click **Get started**.

1. Click **Solutions** and **Audit**.
1. Click **Start recording user and admin activity**.

## PowerShell

### Prerequisites

The module ExchangeOnlineManagement must be installed

[Installing PowerShell modules](Installing-PowerShell-modules.md)

### Instructions

1. Open **Terminal**, **PowerShell**, or **Windows PowerShell**.
1. Connect to Exchange Online.

    ```powershell
    Connect-ExchangeOnline
    ```

    Sign in with a user holding the global administrator role.

1. Enable the audit log search.

    ```powershell
    Set-AdminAuditLogConfig -UnifiedAuditLogIngestionEnabled $true
    ```

1. Disconnect from Exchange Online.

    ```powershell
    Disconnect-ExchangeOnline
    ```

## Reference

[Turn auditing on or off | Microsoft Learn](https://learn.microsoft.com/en-us/purview/audit-log-enable-disable)
