### Task 1: Assign the SharePoint Administrator role

#### Web UI

1. Open **Microsoft Edge**.
1. Navigate to **https://admin.microsoft.com**.
1. Sign in using your Office 365 Tenant Credentials for the Global Admin.
1. In the Microsoft 365 admin center, in the left navigation, click **Users** and **Active users**.
1. In Active users, click the user you want to assign the role to.
1. On the panel for the selected user, on the tab Account, under Roles, click **Manage roles**.
1. In Manage admin roles, click **Admin center access** and the desired role. Click **Save changes**.
1. Close the panel **Manage admin roles**.

#### PowerShell

1. Open **Terminal**, **PowerShell**, or **Windows PowerShell**.
1. Sign in to Microsoft Graph.

    ````powershell
    Connect-MgGraph -Scopes 'RoleManagement.ReadWrite.Directory', 'User.ReadBasic.All'
    ````

1. In Microsoft Edge, sign in using your Office 365 Tenant Credentials for the Global Admin.
1. In the dialog Permissions requests, click **Accept**.
1. Close **Microsoft Edge** and return to **Terminal**.
1. Get the SharePoint Administrator role.

    ````powershell
    $roleName = '' # Insert the name of the role here, e.g., 'SharePoint Administrator'
    $role = Get-MgDirectoryRole -Filter "Displayname eq '$roleName'"
    ````

1. Add role from template if role is not present yet.

    ````powershell
    if ($role -eq $null) {
        $roleTemplate = Get-MgDirectoryRoleTemplate |
            Where-Object { $PSItem.Displayname -eq $roleName }
        New-MgDirectoryRole `
            -DisplayName $roleName -RoleTemplateId $roleTemplate.Id
        $role = Get-MgDirectoryRole -Filter "Displayname eq '$roleName'"
    }
    ````

1. Find and store the user in a variable.

    ````powershell
    $displayname = '' # Insert the display name of the user here
    $mgUser = Get-MgUser -Filter "Displayname eq '$displayname'"
    `````

1. Add the stored user to the role.

    ````powershell
    New-MgDirectoryRoleMemberByRef `
        -DirectoryRoleId $role.Id `
        -OdataId "https://graph.microsoft.com/v1.0/users/$($mgUser.Id)"
    ````

1. Disconnect from Microsoft Graph.

    ````powershell
    Disconnect-MgGraph
    ````

## References

[Assign admin roles in the Microsoft 365 admin center - Microsoft 365 admin | Microsoft Learn](https://learn.microsoft.com/en-us/microsoft-365/admin/add-users/assign-admin-roles)
[Assign admin roles to Microsoft 365 user account with PowerShell](https://learn.microsoft.com/en-us/microsoft-365/enterprise/assign-roles-to-user-accounts-with-microsoft-365-powershell)
