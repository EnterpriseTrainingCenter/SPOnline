# Lab: Manage Permissions

## Setup

On **LON-CL1** sign in as **Administrator**.

## Exercises

1. [Manage site permissions](#exercise-1-manage-site-permissions)
1. [Manage hub permissions](#exercise-2-manage-hub-permissions)
1. [Manage list permissions](#exercise-3-manage-list-permissions)
1. Manage folder permissions
1. Manage permission levels

## Exercise 1: Manage site permissions

1. [Change SharePoint group memberships in the SharePoint admin center](#task-1-change-sharepoint-site-permissions-in-sharepoint-admin-center) of site Work @ Contoso according to the table below

    | Group         | Members                          |
    | ------------- | -------------------------------- |
    | Site admins   | Lynne Robbins, MOD Administrator |
    | Site owners   | None                             |
    | Site members  | Debra Berger, Irvin Sayers       |
    | Site visitors | None                             |

1. [Change SharePoint group memberships in site](#task-2-change-sharepoint-group-memberships-site) Work @ Contoso to add Everyone except external users to the visitors group
1. [Verify and fix permissions](#task-3-verify-and-fix-site-permissions) for site Work @ Contoso
1. [Configure permissions on site](#task-4-configure-permissions-on-site) News @ Contoso: Lynne Robbins should be site admin, Debra Berger and Irvin Sayers should be members. Nobody else should have permissions.

### Task 1: Change SharePoint site permissions in SharePoint admin center

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, select the site **Work @ Contoso** and click **Membership**.
1. In the Work @ Contoso panel, on the Membership tab, click **Add site admins**.
1. In Add site admins to Work @ Contoso, find and click **Lynne Robbins**. Click **Add (1)**.
1. In the panel, click the back arrow.
1. In the Work @ Contoso panel, on the Membership tab, click **Site owners**.
1. Select all principals and click **Remove as site owner**.
1. In the message box Remove as site owners?, click **Remove**.
1. In the **Work @ Contoso panel**, on the **Membership** tab, click **Site members**.
1. Select all principals except **Debra Berger** and **Irvin Sayers**. Click **Remove as site member**.
1. In the message box Remove as site members?, click **Remove**.
1. In the Work @ Contoso panel, on the Membership tab, click **Site visitors**.

    Verify, nobody is site visitor.

1. Close the panel.

### Task 2: Change SharePoint group memberships site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/work**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In the Work @ Contoso site, click the *Settings* icon (the gear icon) and click **Site permissions**.

    Take a moment to explore the current site permissions They should be the permissions you just configured in SharePoint admin center.

1. Click **Share site**.
1. In Site access, find and click **Everyone except external users**. Everyone except external users is added to a list below the text input. Ensure that just below Everyone except external users, in the drop-down **Read** is selected and click **Add**.
1. In **Permissions** expand **Site visitors - no control**.

    Verify, that Everyone except exteral users is member of Site visitors.

### Task 3: Verify and fix site permissions

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/work**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In the Work @ Contoso site, click the *Settings* icon (the gear icon) and click **Site permissions**.
1. In the Permissions panel, click the link **Advanced permission settings**.

    You will see a long list of users with the permission level Contribute. These users received their permission level directly.

1. In Permissions, in the ribbon, click **Check Permissions**.
1. In Work @ Contoso: Check Permission, find and click **Adele Vance** and click **Check Now**.

    Verify that Adele has the Contribute permission level given directly and the Read permission level given through the "Work _ Contoso Visitors" group.

1. Click **Close**.
1. In **Permissions**, select all principals of type **User** and click **Remove User Permissions**.
1. In the message box Are you sure you want to remove all permissions for the selected users and gorup to "Work @ Contoso"?, click **OK**.
1. In Permissions, in the ribbon, click **Check Permissions**.
1. In Work @ Contoso: Check Permission, find and click **Adele Vance** and click **Check Now**.

    Verify that Adele has the Read permission level only.

### Task 4: Configure permissions on site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In Microsoft 365 admin center, click **Show all** and **SharePoint**.
1. In SharePoint admin center, click **Active sites**.
1. In Active sites, select the site **News @ Contoso** and click **Membership**.
1. In the Work @ Contoso panel, on the Membership tab, click **Add site admins**.
1. In Add site admins to Work @ Contoso, find and click **Lynne Robbins**. Click **Add (1)**.
1. Close the panel.
1. In Active sites, in the row of News @ Contoso, in the column **URL**, click **../sites/News**.
1. In the site News @ Contoso, click the icon *Settings* and click **Site permissions**.
1. In Permissions panel Click **Advanced permissions settings**.
1. In Permissions, select all principals of type **User** and click **Remove User Permissions**.
1. In Permissions, click the group **News _ Contoso members**.
1. In News _ Contoso Members, select all users except **Debra Berger** and **Irvin Sayers** and click **Actions**, **Remove Users from Group**.
1. In the message box You are about to remove the following members from group..., click **OK**.
1. In the left navigation click **News _ Contoso Owners**.
1. In News _ Contoso Owners, select all users and click **Actions**, **Remove Users from Group**.
1. In the message box You are about to remove the following members from group..., click **OK**.
1. Click the *Settings* icon and click **Site settings**.
1. In Site Settings, click **Site permissions**.
1. In Permissions, click **Check permissions**.
1. In News @ Contoso: Check Permissions, under **User/Group**, find and click **Patti Fernandez**. Click **Check now**.

    Verify that Patti has a permission level of None.

1. Under **User/Group** remove **Adele Vance**. Find and click **Debra Berger** and click **Check now**.

    Verify that Debra has the permission level Edit.

1. Click **Close**.

## Exercise 2: Manage hub permissions

1. [Enable hub permissions sync on the hub site](#task-1-enable-hub-permissions-sync-on-the-hub-site) Work @ Contoso
1. [Enable hub permissions sync on the associated site](#task-2-enable-hub-permissions-sync-on-the-associated-site) News @ Contoso
1. [Verify permissions on the associated site](#task-3-verify-permissions-on-the-associated-site)

### Task 1: Enable hub permissions sync on the hub site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/work**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In the Work @ Contoso site, click the *Settings* icon (the gear icon) and click **Site permissions**.
1. In the Permissions panel, click the tab **Hub**.
1. Click the switch below **Sync hub permissions to associated sites** to change the status to **On**. Under **Hub visitors** in **Enter a name or group** find and click **sg-Executive**.
1. Close the panel.

### Task 2: Enable hub permissions sync on the associated site

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/news**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In the News @ Contoso site, click the *Settings* icon (the gear icon) and click **Site permissions**.
1. In the Permissions panel, click **Advanced permissions settings**.

    Verify that the permissions have not changed since you configured them in the previous exercise.

1. In the left navigation click **Home**.
1. On the home page, click the *Settings* icon (the gear icon) and click **Site permissions**.
1. In the Permissions panel, click the tab **Hub**.
1. On the tab Hub, click the switch below **Sync hub permissions to this site** to change the status to **On**.

    Verify that below under Hub Visitors the group sg_Executive is lested with Read permission level.

1. Close the panel.

### Task 3: Verify permissions on the associated site

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/news**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In the News @ Contoso site, click the *Settings* icon (the gear icon) and click **Site permissions**.
1. In the Permissions panel, click **Advanced permissions settings**.

    Verify that the group Hub Visitors was added with the permission level Read.

1. Click **Check Permissions**.
1. In News @ Contoso: Check Permissions, under **User/Group**, find and click **Patti Fernandez**. Click **Check Now**.

    Verify that Patti has the permission level Read given through the "Hub Visitors" group.

1. Click **Close**.

## Exercise 3: Manage list permissions

1. [Create a list](#task-1-create-a-list) in site News @ Contoso based on and named Content scheduler
1. [Create SharePoint groups](#task-2-create-sharepoint-groups) Visitors and Members for the list according to the recommended naming scheme
1. [Configure permissions on the list](#task-3-configure-permissions-on-the-list) content scheduler like in [figure 1]
1. [Add users to the SharePoint groups](#task-4-add-users-to-the-sharepoint-groups) according to the table below(#task-4-add-users-to-the-sharepoint-groups)

    | Group                                     |              |
    | ------------------------------------------| ------------ |
    | News _ Contoso Content scheduler Members  | Irvin Sayers |
    | News _ Contoso Content scheduler Visitors | Debra Berger |

1. [Verify permissions on the list](#task-5-verify-permissions-on-the-list)

### Task 1: Create a list

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/news**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In site News @ Contoso, click the *Settings* icon and click **Site contents**.
1. In Site contents, cick **New** and click **List**.
1. In Create a list, click **Content scheduler**.
1. In Content scheduler, click **Use template**.
1. In the following dialog box, click **Create**.
1. In You're almost there, click **Do this later**.

### Task 2: Create SharePoint groups

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/news**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In site News @ Contoso, click the *Settings* icon and click **Site contents**.
1. In Site contents, click **Site settings**.
1. In Site Settings, click **People and groups** (this is the first link).
1. In People and Groups, in the left navigation, click **Groups** or **More...**
1. Click **New**.
1. In Create Group, under **Name**, type **News _ Contoso Content scheduler Visitors**. Under **About me**, type **Use this group to grant people read permissions to the list Content scheduler**. Click **Create**.
1. In **People and Groups**, in the left navigation, click **Groups** or **More...**
1. Click **New**.

    Note: There is an shortcuts to create groups. After you created one group, you can go back in the browser to return to the Create Group form and enter the data for the next group.

1. In Create Group, under **Name**, type **News _ Contoso Content scheduler Members**. Under **About me**, type **Use this group to grant people contribute permissions to the list Content scheduler**. Click **Create**.

### Task 3: Configure permissions on the list

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/news**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In site News @ Contoso, click the *Settings* icon and click **Site contents**.
1. In Site contents, click **Content scheduler**.
1. In Content scheduler, click the *Settings* icon and click **List settings**.
1. In Settings, unter **Permissions and Management**, click **Permissions for this list**.
1. In Permissions, on the ribbon, click **Stop Inheriting Permissions**.
1. In the message You are about to create unique permissions for this list. Changes made to the parent site permissions will no longer affect this list, click **OK**.
1. Click **Grant Permissions**.
1. In Share 'Content scheduler', find and click **News _ Contoso Content scheduler Visitors** and **News _ Contoso Content scheduler Members**. Click **SHOW OPTIONS**. Under **Select a permission level**, select **Read**. Click **Share**.
1. Refresh the page.
1. In Permissions, select **Hub Visitors**, **News _ Contoso Members**, and **News _ Contoso Visitors**. Click **Remove User Permissions**.
1. In the message Are you sure your want to remove all permissions for the selected users and groups to "Content scheduler"?, click **OK**.
1. In Permissions, select **News _Contoso Content scheduler Members** and click **Edit User Permissions**.
1. In Edit Permissions, activate **Contribute - can view, add, update, and delete list items and documents.** Deactivate **Read - Can view pages and list items and download documents.** Click **OK**.

    Verify the permissions look like in [figure 1].

### Task 4: Add users to the SharePoint groups

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/news**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In site News @ Contoso, click the *Settings* icon and click **Site contents**.
1. In Site contents, click **Site settings**.
1. In Site Settings, click **People and groups** (this is the first link).
1. In People and Groups, in the left navigation, click **Groups** or **More...**
1. Click **News _ Contoso Content scheduler Members**.
1. In News _ Contoso Content scheduler Members, click **New**.
1. In Share 'News @ Contoso', find and click **Irvin Sayers** and click **Share**.
1. In News _ Contoso Content scheduler Members, click click **Groups** or **More...**
1. Click **News _ Contoso Content scheduler Visitors**.
1. In News _ Contoso Content scheduler Visitors, click **New**.
1. In Share 'News @ Contoso', find and click **Debra Berger** and click **Share**.

### Task 5: Verify permissions on the list

Perform this task on LON-CL1.

1. Open **Microsoft Edge**.
1. In Microsoft Edge, navigate to **https://\<your tenant\>.sharepoint.com/sites/news**.
1. Sign in as **LynnR@\<your tenant\>.onmicrosoft.com**.
1. In site News @ Contoso, click the *Settings* icon and click **Site contents**.
1. In Site contents, click **Content scheduler**.
1. In Content scheduler, click the *Settings* icon and click **List settings**.
1. In Settings, unter **Permissions and Management**, click **Permissions for this list**.
1. In Permissions, on the ribbon, click **Check Permissions**.
1. In Content scheduler: Check Permissions, find and click **Debra Berger**. Click **Check Now**.

    Verify that Debra has the permission level Read given through the "News _ Contoso Content scheduler Visitors" group.

1. In Content scheduler: Check Permissions, find and click **Irvin Sayers**. Click **Check Now**.

    Verify that Irvin has the permission level Contribute given through the "News _ Contoso Content scheduler Members" group.

1. Click **Close**

## Exercise 4: Manage folder permissions

1. Create a folder in the Documents library of the site Operations
1. Create SharePoint groups for permssions on the folder
1. Configure permission on the folder
1. Add users to the SharePoint groups
1. Verify permissions

## Exercise 5: Manage permission levels

1. Create a permission level Approve in site News @ Contoso and enable the Approve items permission
1. Create a new SharePoint group in News @ Contoso with the name Approvers and grant the group Approve permissions on the site
1. Add users to the SharePoint group
1. Enable approval on the Documents library
1. Verify permissions

[figure 1]:/images/permissions-content-scheduler.png