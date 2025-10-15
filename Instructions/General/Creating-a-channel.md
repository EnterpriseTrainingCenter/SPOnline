# Creating a channel

#### Web UI

1. Open **Microsoft Edge**.
1. Navigate to **https://teams.microsoft.com**.
1. In Microsoft Teams, on the left, click **Chat**.
1. In Teams, at the top click the *New items* icon and click **New channel**.

    ![Create channel][figure 1]
    Figure 1: Create channel

1. In Create a channel, click **Select a team**.
1. In Pick a team to add new channel to, click the name of the team and click **Done**.
1. In **Create a channel**, under **Channel name**, type the name of the channel. Under **Choose a channel type**, select the channel type. Click **Create**.

#### PowerShell

1. Open **Terminal**.
1. In Terminal, ensure **PowerShell** is shown at the top. Sign in to Microsoft Teams.

    ````powershell
    Connect-MicrosoftTeams
    `````

1. Sign in as Global administrator, Teams service administrator or SharePoint administrator.
1. Create channel.

    ````powershell
    <#
        Between the quotes, type the display name of the team, the display name
        of the channel, and insert either 'Standard', 'Private', or 'Shared' for
        the membership type.
    #>
    $teamDisplayName = ''
    $channelDisplayName = ''
    $membershipType = ''
    Get-Team -DisplayName $teamDisplayName |
    New-TeamChannel `
        -DisplayName $channelDisplayName -MembershipType $membershipType
    ````

1. Disconnect from Microsoft Teams.

    ````powershell
    Disconnect-MicrosoftTeams
    ````

## References

[Create a standard, private, or shared channel in Microsoft Teams - Microsoft Support](https://support.microsoft.com/en-us/office/create-a-standard-private-or-shared-channel-in-microsoft-teams-fda0b75e-5b90-4fb8-8857-7e102b014525)

[New-TeamChannel (MicrosoftTeams) | Microsoft Learn](https://learn.microsoft.com/en-us/powershell/module/microsoftteams/new-teamchannel)

[figure 1]:/images/teams-new-channel.jpeg
