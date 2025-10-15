# Listing Entra ID role holders
  
## Web UI

1. Navigate to **https://admin.microsoft.com**.
1. Sign in using your Office 365 Tenant Credentials for the Global Admin.
1. In the Microsoft 365 admin center, in the left navigation, click **Roles**.
1. In the list of roles, click the desired role, e.g., **SharePoint Administrator**.
1. On the panel for the selected role, under **Assigned admins**, you can see the list of users assigned to this role.

## PowerShell

1. Open **Terminal**, **PowerShell**, or **Windows PowerShell**.
1. Sign in to Microsoft Graph.

    ````powershell
    Connect-MgGraph -Scopes 'RoleManagement.ReadWrite.Directory', 'User.ReadBasic.All'
    ````

1. Get the SharePoint Administrator role.

    ````powershell
    $roleName = '' # Insert the name of the role here, e.g., 'SharePoint Administrator'
    $role = Get-MgDirectoryRole -Filter "Displayname eq '$roleName'"
    ````

1. List all users assigned to this role.

    ````powershell
    $roleMembers = Get-MgDirectoryRoleMember -DirectoryRoleId $role.Id
    foreach ($member in $roleMembers) {
        $user = Get-MgUser -UserId $member.Id
        $user.DisplayName
    }
    ````

1. Disconnect from Microsoft Graph.

    ````powershell
    Disconnect-MgGraph
    ````

## References

[Assign admin roles in the Microsoft 365 admin center - Microsoft 365 admin | Microsoft Learn](https://learn.microsoft.com/en-us/microsoft-365/admin/add-users/assign-admin-roles)

[Get-MGDirectoryRoleMember (Microsoft.Graph.Identity.DirectoryManagement | Microsoft Learn)](https://learn.microsoft.com/en-us/powershell/module/microsoft.graph.identity.directorymanagement/get-mgdirectoryrolemember)
