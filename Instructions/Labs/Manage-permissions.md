# Lab: Manage Permissions

## Setup

On **LON-CL1** sign in as **Administrator**.

## Exercises

1. [Manage permission of a site](#exercise-1-manage-permissions-of-a-site)
1. Manage permission of a hub
1. Manage permissions of a list
1. Manage permissions of a folder
1. Manage permission levels

## Exercise 1: Manage permissions of a site

1. [Change SharePoint group memberships in the SharePoint admin center](#task-1-change-sharepoint-site-permissions-in-sharepoint-admin-center) of site Work @ Contoso according to the table below

    | Group         | Members                          |
    | ------------- | -------------------------------- |
    | Site admins   | Lynne Robbins, MOD Administrator |
    | Site owners   | None                             |
    | Site members  | Debra Berger, Irvin Sayers       |
    | Site visitors | None                             |

1. [Change SharePoint group memberships in site](#task-2-change-sharepoint-group-memberships-site) Work @ Contoso to add Everyone except external users to the visitors group
1. [Verify and fix permissions](#task-3-verify-and-fix-site-permissions) for site Work @ Contoso

## Task 1: Change SharePoint site permissions in SharePoint admin center

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

## Task 2: Change SharePoint group memberships site

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

## Exercise 2: Manage permissions of a hub

1. Enable Hub sync permissions on the hub site Work @ Contoso
1. Enable hub sync permissions on the site News @ Contoso
1. Verify permissions

## Exercise 3: Manage permissions of a list

1. Create a list in site Operations
1. Create SharePoint groups for permssions on the list
1. Configure permission on the list
1. Add users to the SharePoint groups
1. Verify permissions

## Exercise 4: Manage permissions of a folder

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
