# Lab: Manage OneDrive

## Setup

1. On **WIN1**, sign in as **Admin**.

If you skipped Lab [Get started with SharePoint administration](/Instructions/Labs/Get-started-with-SharePoint-administration.md), in **PowerShell** or **Windows PowerShell**, execute **C:\LabResources\Solutions\Start-SharePointAndTeamsConfiguration.ps1**. If you are asked to sign in, use the global administrator credentials of your tenant.

## Introduction

Your company wants to make use of OneDrive. Therefore, you want to configure clients to automatically sign in to the OneDrive sync app and redirect known folders to OneDrive. Furthermore, the company has migrated network shares to SharePoint libraries. However, users expect to show up the files from these locations in File Explorer automatically. Therefore, you want to configure OneDrive to sync these libraries automatically.

Your manager is concerned about the loss of data in OneDrive when a user gets deleted. For this reason you configure an test OneDrive retention.

## Exercises

1. [Configure the OneDrive client using Intune](#exercise-1-configure-the-onedrive-client-using-intune)
1. [Manage the sync of SharePoint libraries using Intune](#exercise-2-manage-the-sync-of-sharepoint-libraries-using-intune)
1. [Manage OneDrive retention](#exercise-3-manage-onedrive-retention)

## Exercise 1: Configure the OneDrive client using Intune

1. [Obtain the Entra tenant ID](#task-1-obtain-the-entra-tenant-id)
1. [Configure automatic enrollment in Intune](#task-2-configure-automatic-enrollment-in-intune)
1. [Create a configuration policy](#task-3-create-a-configuration-policy) to automatically sign in to OneDrive, move known folders, and prevent users from disabling files-on-demand
1. [Join a client to Entra and verify the OneDrive configuration](#task-4-join-a-client-to-entra-and-verify-the-onedrive-configuration). Join WIN1.

### Task 1: Obtain the Entra tenant ID

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://entra.microsoft.com**.
1. Sign in as Global administrator.
1. In Microsoft Entra admin center, in the left navigation pane, click **Overview**.
1. On the Overview tab, under **Basic information** click the *Copy* icon right to **Tenant ID**.
1. Save the tenant ID, e.g., in Notepad.

### Task 2: Configure automatic enrollment in Intune

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://intune.microsoft.com**.
1. Sign in as Global administrator.
1. In Microsoft Intune admin center, in the left navigation pane, click **Devices**.
1. In Devices, under **Device onboarding**, click **Enrollment**.1
1. In Enrollment, on the tab **Windows**, click **Automatic enrollment**.
1. In Microsoft Intune, under **MDM user scope**, click **All**. Click **Save**.

### Task 3: Create a configuration policy

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://intune.microsoft.com**.
1. Sign in as Global administrator.
1. In Microsoft Intune admin center, in the left navigation pane, click **Devices**.
1. In Devices, under **Manage devices**, click **Configuration**.
1. In Configuration, click **Create**, **New Policy**.
1. In the Create a profile pane, under **Platform**, select **Windows 10 and later**. Under **Profile type** select **Settings catalog**. Click **Create**.
1. In Create Profile, on the tab **1 Basics**, beside **Name**, type **OneDrive configuration**. Beside **Description**, type **Automatically sign in to OneDrive and move known folders**. Click **Next**.
1. On the tab **2 Configuration settings**, click **Add settings**.
1. On the Settings picker pane, under **Browse by category**, click **OneDrive**. Add the following settings, then close the **Settings picker**.

    * Silently move Windows know folders to OneDrive
    * Silently sign in users to the OneDrive sync app with their Windows credentials
    * Use OneDrive Files On-Demand

1. On tab **2 Configuration settings**, enable all the selected settings. Under **Silently move Windows known folders to OneDrive**, also enable **Desktop (Device)**, **Documents (Device)**, and **Pictures (Device)**. Beside **Show notification to users after folders have been redirected (Device)**, select **Yes**. Beside **Tenant ID: (Device)**, paste the previously obtained tenant ID. Click **Next**.
1. On tab **3 Scope tags**, click **Next**.
1. On tab **4 Assignments**, click **Add all devices** and click **Next**.
1. On tab **Review + create**, click **Create**.

### Task 4: Join a client to Entra and verify the OneDrive configuration

Perform this task on WIN1.

1. Open **Settings**.
1. In Settings, click **Accounts**.
1. In Accounts, click **Access work or school**.
1. In Access work or school, click **Connect**.
1. In Set up a work or school account, click the link **Join this device to Microsoft Entra ID**.
1. Sign in as **JoniS@\<your tenant\>.onmicrosoft.com**.
1. In Make sure this is your organization, verify the data and click **Join**.
1. In You're all set!, click **Done**.
1. Sign out.
1. Sign in as **JoniS@\<your tenant\>.onmicrosoft.com** and follow the prompts to configure Windows Hello.
1. Open **File Explorer**.

    In File Explorer, verify that Joni has a OneDrive - Contoso folder in the left navigation.

    This may not work at the first signin, as the device needs some time to get registered to Intune. Continue with the next exercise, where you have the chance to verify the OneDrive sync app again.

1. In File Explorer, click **OneDrive - Contoso**.

    Verify that OneDrive contains your Joni's desktop, documents and pictures.

1. Sign out.

## Exercise 2: Manage the sync of SharePoint libraries using Intune

1. [Obtain the ID of the library](#task-1-obtain-the-id-of-a-library) Documents in the site All Company
1. [Create a configuration policy](#task-2-create-a-configuration-policy) to configure sync of the SharePoint library
1. [Verify the sync of the SharePoint library](#task-3-verify-the-sync-of-the-sharepoint-library)

### Task 1: Obtain the ID of a library

Perform this task on WIN1.

1. Sign in as Global administrator.
1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/allcompany**.
1. In the All company site, click **Documents**.
1. In Documents, click **Sync**.
1. In the message This site is trying to open Microsoft OneDrive, click **Cancel**.
1. In the message box We'ere syncing your files, click **Copy library ID** and click **Close**.
1. Save the library ID, e.g., in Notepad.

### Task 2: Create a configuration policy

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://intune.microsoft.com**.
1. In Microsoft Intune admin center, in the left navigation pane, click **Devices**.
1. In Devices, under **Manage devices**, click **Configuration**.
1. In Configuration, click **Create**, **New Policy**.
1. In the Create a profile pane, under **Platform**, select **Windows 10 and later**. Under **Profile type** select **Settings catalog**. Click **Create**.
1. In Create Profile, on the tab **1 Basics**, beside **Name**, type **OneDrive Libraries sync**. Beside **Description**, type **Automatically syncs document libraries in team sites**. Click **Next**.
1. On the tab **2 Configuration settings**, click **Add settings**.
1. On the Settings picker pane, under **Browse by category**, click **OneDrive**. Add the setting **Configure team site libraries to sync automatically (User)**. Then, close the **Settings picker**.
1. On tab **2 Configuration settings**, enable **Configure team site libraries to sync automatically (User)**. Under **Libraries (User)** in the **Name** column, type **All Company Documents**. In the **Value column**, paste the library ID you obtained earlier. Click **Next**.
1. On tab **3 Scope tags**, click **Next**.
1. On tab **4 Assignments**, click **Add all users** and click **Next**.
1. On tab **Review + create**, click **Create**.

### Task 3: Verify the sync of the SharePoint library

Perform this task on WIN1.

1. Sign out.
1. Sign in as **Joni Sherman**.
1. Open **File Explorer**.

    In File Explorer, verify that you see a folder Contoso and the synced library is in this folder.

    If OneDrive has not been configured automatically yet, you will not see the folders. In this case continue with the lab and repeat this task later.

## Exercise 3: Manage OneDrive retention

1. [Configure the settings for retention and access delegation](#task-1-configure-the-settings-for-retention-and-access-delegation) so that OneDrive is retained for the maximum allowed time and Lynne Robbins is added as secondary owner of OneDrives of deleted users (as well as the manager of the user)
1. [Delete user](#task-2-delete-user): Christie Cline and delegate access to Christie's OneDrive to Alex Wilber
1. [Verify OneDrive access delegation user experience](#task-3-verify-onedrive-access-delegation-user-experience) as Miriam Graham
1. [Verify OneDrive access delegation using PowerShell](#task-4-verify-onedrive-access-delegation-using-powershell)

### Task 1: Configure the settings for retention and access delegation

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In the SharePoint admin center, click **Settings**.
1. In Settings, click **Retention**.
1. In the Retention panel, under **Days to retain a deleted user's OneDrive**, type **3650** and click **Save**.
1. In the left navigation, click **More fetures**.
1. In More features, under **User profiles**, click **Open**.
1. In User profiles, under **My Site Settings**, click the link **Setup my sites**.
1. Beside **My Site Cleanup**, ensure **Enable access delegation** is activated. Under **Secondary Owner**, click *Browse* icon.
1. In select people, beside **Find**, enter **lynn**. Click **Lynne Robbins** and click **OK**.
1. Click **OK**.

### Task 2: Delete user

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as global administrator.
1. In Microsoft 365 admin center, click **Users** and **Active Users**.
1. In Active Users, click **Christie Cline**.

    On the Christie Cline panel, verify that Miriam Graham is configured as manager.

1. On the Christie Cline panel, click **Delete user**.
1. On Delete Christie Cline, active **Give another user access to this user's OneDrive files for 30 days after the user is deleted** and, below, find and click **Alex Wilber**. Click **Delete user**.

    Note: The text **Give another user access to this user's OneDrive files for 30 days after the user is deleted** is hard-coded and does not reflect your actual retention setting.

### Task 3: Verify OneDrive access delegation user experience

*Important:* It takes up to 24 hours for the OneDrive cleanup job to run. Therefore, perform this task on the next course day.

Perform this task on WIN1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, click the profile icon in the top-left corner, click **Other profiles** and **Browse as guest**.
1. In the new Microsoft Edge guest instance, navigate to **https://outlook.office.com**.
1. Sign in as **MiriamG@\<your tenant\>.onmicrosoft.com**.

    You should receive an email similar to [figure 1]. It can take up to 24 hours until the email arrives.

1. Copy the link in the email.
1. In the Microsoft Edge guest instance, open a new tab and navigate to the copied link (paste it in the address bar).

    You should see the OneDrive of Christie Clien with some documents and folders.

1. In OneDrive, click the *Settings* icon (the gear icon) and click **OneDrive settings**.
1. In the left navigation, click **More Settings**.
1. In More Settings, under **Manage access**, click **Site collection administrators**.

    Verify that Alex Wilber, Christie Cline, and Miriam Graham are site collection administrators.Lynne Robbins would only be added, if Christie Cline had not had a manager assigned. However, Miriam could add or remove users here.

### Task 4: Verify OneDrive access delegation using PowerShell

*Important:* It takes up to 24 hours for the OneDrive cleanup job to run. Therefore, perform this task on the next course day.

Perform this task on WIN1.

1. Open **Terminal**.
1. In Terminal, click the down chevron and click **Windows PowerShell**.
1. Connect to Sharepoint Online.

    ````powershell
    
    $tenantName = 'wwlx421595' # Replace wwlx421595 with your tenant name
    Connect-SPOService -Url "https://$tenantName-admin.sharepoint.com"
    ````

1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.
1. Find Christie's OneDrive and store the reference in a variable.

    ````powershell
    $sPOSite = Get-SPOSite `
        -Filter { Owner -eq "christiec@$tenantName.onmicrosoft.com" } `
        -IncludePersonalSite $true
    ````

1. Verify that Christie's site was found.

    ````powershell
    $sPOSite
    `````

    You should see the URL and the Owner of Christie's OneDrive.

1. Make Lynne Robbins the owner of Christie's OneDrive.

    ````powershell
    $loginName = "LynneR@$tenantName.onmicrosoft.com"
    Set-SPOUser `
        -Site $sPOSite -LoginName $loginName -IsSiteCollectionAdmin $true
    ````

1. List the site admins of Christie's OneDrive.

    ````powershell
    Get-SPOUser -Site $sPOSite | Where-Object { $PSItem.IsSiteAdmin }
    ````

    Verify that Alex Wilber, Christie Cline, Lynne Robbins, and Miriam Graham are site admins. If you want, you could add more site admins using the command from the previous step.

1. Disconnect from SharePoint Online.

    ```powershell
    Disconnect-SPOService
    ````

[figure 1]:/images/mail-OneDrive-for-Business-contents-will-be-preserved.png