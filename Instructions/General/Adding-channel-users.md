# Adding channel users

## Web UI

1. Navigate to the team where the channel is located.
1. Click the ellipsis (...) next to the channel name.
1. Click **Manage channel**.
1. Click the tab **Members**.
1. On the tab Members, click **Share with people**.
1. In the dialog Share the Shared channel, in **Type a name or email**, type the name of the user you want to add and click **Share**.

## PowerShell

1. Open **Terminal**, **PowerShell**, or **Windows PowerShell**.
1. Sign in to Microsoft Teams.

    ````powershell
    Connect-MicrosoftTeams
    `````

1. In Microsoft Edge, sign in as Global administrator, Teams service administrator or SharePoint administrator.
1. Add **Patti Fernandez** to the shared channel.

    ````powershell
    <#
        Between the quotes, type the display name of the team, the display name
        of the channel, and the user principal name of the user you want to add.
    #>
    $teamDisplayName = ''
    $channelDisplayName = ''
    $user = ''

    Get-Team -DisplayName $teamDisplayName |
    Add-TeamChannelUser -DisplayName $channelDisplayName -User $user
    ````

1. Disconnect from Microsoft Teams.

    ````powershell
    Disconnect-MicrosoftTeams
    ````

## References

[Manage shared channels in Microsoft Teams - Microsoft Support](https://support.microsoft.com/en-us/office/manage-shared-channels-in-microsoft-teams-fdef17da-f892-4707-874f-33b756d368b4)

[Add-TeamChannelUser (MicrosoftTeams) | Microsoft Learn](https://learn.microsoft.com/en-us/powershell/module/microsoftteams/add-teamchanneluser)
