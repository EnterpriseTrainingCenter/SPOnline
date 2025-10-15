# Creating a team

## Web UI

1. Open **Microsoft Edge**.
1. Navigate to **https://teams.microsoft.com**.
1. In Microsoft Teams, on the left, click **Teams**.
1. In Teams, at the top click **+** and click **Create team**.
1. In Create a team, under Team name, type the name of the new team. Ensure the **Team type** to be **Private**. Under Name the first channel, type **General information**. Click **Create**.
1. In Add members to SharePoint project, in **Type a name or email**, search for users or groups to add. Click **Add**.

## PowerShell

1. Open **Terminal**, **PowerShell**, or **Windows PowerShell**.
1. In Terminal, sign in to Microsoft Teams.

    ````powershell
    Connect-MicrosoftTeams
    `````

1. Sign in as a Global Admin or Teams Service Admin or SharePoint Admin.
1. Create a team.

    ````powershell
    $displayName = '' # Between the quotes, insert the display name of the team
    $mailNickName = '' # Between the quotes, insert the team's mail nickname
    New-Team -DisplayName $displayName -MailNickName $mailNickName
    ````

1. Add a user to the team.

    ````powershell
    $user = '' # Between the quotes, insert the user principal name
    Get-Team -DisplayName $displayName |
    Add-TeamUser -User $user
    ````

1. Disconnect from Microsoft Teams.

    ````powershell
    Disconnect-MicrosoftTeams
    ````

## References

[Create a team from scratch in Microsoft Teams - Microsoft Support](https://support.microsoft.com/en-us/office/create-a-team-from-scratch-in-microsoft-teams-174adf5f-846b-4780-b765-de1a0a737e2b)

[New-Team (MicrosoftTeams) | Microsoft Learn](https://learn.microsoft.com/en-us/powershell/module/microsoftteams/new-team)

[Get-Team (MicrosoftTeams) | Microsoft Learn](https://learn.microsoft.com/en-us/powershell/module/microsoftteams/get-team)

[Add-TeamUser (MicrosoftTeams) | Microsoft Learn](https://learn.microsoft.com/en-us/powershell/module/microsoftteams/add-teamuser)