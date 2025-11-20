# Lab: Governance and compliance

## Exercises

1. [Enable audit log search](#exercise-1-enable-audit-log-search)
1. [Create a data loss prevention policy](#exercise-2-create-a-data-loss-prevention-policy)
1. [Protect sensitive data with sensitivity labels](#exercise-3-protect-sensitive-data-with-sensitivity-labels)
1. [Data Lifecycle Management](#exercise-4-data-lifecycle-management)
1. [Validate data loss prevention](#exercise-5-validate-data-loss-prevention) 
1. [Validate information protection and retention labels](#exercise-6-validate-information-protection-and-retention-labels)

## Exercise 1: Enable audit log search

In Microsoft Purview enabel audit log search.

[Enabling audit log search](../General/Enabling-audit-log-search.md)

## Exercise 2: Create a data loss prevention policy

1. In Microsoft Purview, create a new data loss prevention policy with the following parameters:

    * **Template or custom policy**: **GDPR enhanced**
    * **Name and description**: Accept the defaults.
    * **Admin units**: Apply the policy to the full directory.
    * **Locations** (deactivate locations not listed here):

        * Exchange email
        * SharePoint sites
        * OneDrive accounts
        * Teams chat and channel messages

    * Policy settings

        * **Low volume of content detected GDPR enhanced** and **Low volume EU Sensitive Enhanced content found 2**
            * Actions: 
                * Restricts access or encrypt the content in Microsoft 365 loations.                
                    * Block people only outside of your organization.
            * User notifications
                * On
                * Notify these people
                    * The person who sent, shared, or modified the content
                    * Owner of the SharePoint site or OneDrive account
                    * Owner of the SharePoint or OneDrive content
            * User overrides
                * Allow users to override policy restrictions in Fabric (indlucing Power BI), Exchange, SharePoint, OneDrive, and Teams.
                    * Require a business justification to override
                    * Override the rule automatically if they report it as false positive

            Leave all other options in their default state.

        * **High volume of content detected GDPR enhanced** and **High volume of EU Sensitive Enhanced content found 2**: Leave the rules in their default state. However, you may want to inspect the rules.

    * **Policy mode**: **Turn the policy on immediately**

    The summary should look like in figure 1.

    ![Review and finish][figure 1]
    *Figure 1: Review and finish*

    [Creating a data loss prevention policy](../General/Creating-a-data-loss-prevention-policy.md)

1. Move the new policy to the top (highest priority).

## Exercise 3: Protect sensitive data with sensitivity labels

1. Enable sensitivity label support in Entra ID.

    [Enabling sensitivity label support in Entra ID](../General/Enabling-sensitivity-label-support-in-Entra-ID.md)

1. Crate or edit the sensitivity labels without creating a policy yet.

    * Label details
        * Name and display name: **Public** (edit the existing label)
        * Description for users: **Business data that is specifically prepared and approved for public consumption.**
    * Scope: All scopes
    * Items: None
    * Auto-labeling for files and emails: Off
    * Groups & sites: activate all protection settings
    * Privacy & external user access
        * Privacy: **None**
        * Let Microsoft 365 Group owners add people outside your organization to the group as guests
    * External sharing & conditional access
        * Control external sharing from labeld SharePoint sites: **Anyone**
    * Private teams & shared channel settings
        * Allow users to discover private teams that have this label applied
        * Teams shared channels
            * Private teams only
    
    ![Sensitivity label public][figure 2]
    *Figure 2: Sensitivity label public*

    * Label details
        * Name and display name: **Internal**
        * Description for users: **Business data that may not be shared to external entities.**
    * Scope: All scopes
    * Items: **Apply content marking**
    * Content marking
        * Add a watermark
            * Watermark text: **Internal use only**
            * Footer: **Internal use only**
    * Auto-labeling for files and emails: Off
    * Groups & sites: activate all protection settings
    * Privacy & external user access
        * Privacy: **Private**
    * External sharing & conditional access
        * Control external sharing from labeld SharePoint sites: **Only people in your organization**
    * Private teams & shared channel settings
        * Allow users to discover private teams that have this label applied
        * Teams shared channels
            * Internal only

    ![Sensitivity label internal][figure 3]
    *Figure 3: Sensitivity label internal*

    * Label details
        * Name: **Confidential content**
        * Display name: **Confidential**
        * Description for users: **Confidential content with restricted sharing**
        * Description for admins: **Content will be encrypted**
    * Scope: All scopes
    * Items: **Control access** and **Apply content marking**
    * Access control
        * Let users assign permissions when thy apply the label
        * In Outlook enforce **Do not Forward**
        * In Word, PowerPoint, and Excel, prompt users to specify permissions
        * Use dynamic watermarking
    * Content marking
        * Add a watermark
            * Watermark text: **Confidential**
            * Footer: **Confidential**
    * **Auto-labeling for files and emails**: off
    * **Groups & sites**: activate all protection settings
    * Privacy & external user access
        * Privacy: **Private**
    * External sharing & conditional access
        * Control external sharing from labeld SharePoint sites: **Only people in your organization**
    * Private teams & shared channel settings
        * Teams shared channels
            * Internal only

    ![Sensitivity label confidential][figure 4]
    *Figure 4: Sensitivity label confidential*

    * Label details
        * Name and display name: **Personally Identifiable Information (PII)**
        * Description for users: **Personally Identifiable Information (PII) according to GDPR**
    * Scope: **Files & other data assets** and **Emails**
    * Items: **Control access**
    * Access control
        * Let users assign permissions when thy apply the label
        * In Outlook enforce **Do not Forward**
        * In Word, PowerPoint, and Excel, prompt users to specify permissions
        * Use dynamic watermarking
    * **Auto-labeling for files and emails**: off

    ![Sensitivity label Personally Identifiable Information (PII)][figure 5]
    *Figure 5: Sensitivity label Personally Identifiable Information (PII)*

1. Create an auto-labeling policy

    * Info for label: **GDPR enhanced**
    * Name: **Personally Identifiable Information (PII)**
    * Label: **Personally Identifiable Information (PII)**
    * Admin units: **Full directory**
    * Locations: all locations
    * Policy rules: **Advanced rules**
    * Exchange rules: accept all defaults
    * SharePoint sites: accept all defaults
    * OneDrive accounts: accept all defaults
    * Additional email settings: none
    * Policy mode
        * Run policy in simulation mode
        * Automatically turn on policy if not modified after 7 days in simulation

    [Creating an auto-labeling policy](../General/Creating-an-auto-labeling-policy.md)

1. Create a label publishing policy and move it to the top.

    * Labels to publish
        * Public
        * Internal
        * Confidential
        * Personally Identifiable Information (PII)
    * Admin units: **Full directory**
    * Users and groups: **All users & groups**
    * Policy settings
        * Users must provide a justification to remove a label or lower its classification
    * Documents
        * Default label: Confidential
    * Email
        * Default label: Same as document
        * Require users to apply a label to their emails
        * Email inherits hightest priority label from attachments
            * Automatically apply label
    * Meetings
        * Default label: Confidential
        * Require users to apply a label to their meetings and calendar events
        * Inherit label from files shared to meetings: **Automatically apply highest priority label**
    * Sites and groups
        * Default label: Confidential
        * Requires users to apply a label to their groups or sites
    * Fabric and Power BI
        * Default label: Confidential
    * Name: **Contoso default**
    
    ![Labeling policy Contoso default][figure 6]
    *Figure 6: Labeling policy Contoso default*

    [Creating a label publishing policy ](../General/Creating-a-label-publishing-policy.md)

## Exercise 4: Data Lifecycle Management

1. Create a retention label without publishing the label.

    * Name: **Financial data**
    * Label Settings: **Retain items forever or for a specific period**
    * Period
        * Retain items for: **8 years**
        * Start the retention period based on: **When items were last modified**
        * Setting after period: **Delete items automatically**

    ![Retention label Financial data][figure 7]
    *Figure 7: Retention lable Financial data*

    [Creating a retention label](../General/Creating-a-retention-label.md)

1. Publish labels:

    * Choose label to publish: **Financial data**
    * Policy scope: **Full directory**.
    * Scope: **Static**
    * Publish to users and groups: Select all locations
    * Name your policy: **Contoso default retention labels**

    [Publishing retention labels](../General/Publishing-retention-labels.md)

## Exercise 5: Validate data loss prevention

1. Open **OneDrive**, sign in as **LynneR@\<your tenant\>**. Create a new Excel workbook and copy this table into it.

    | Name | Passport Number |
    | --- | --- |
    | Lukas Huber | P6317842 |
    | Anna Gruber | L0952738 |
    | Michael Bauer | K4825167 |
    | Julia Steiner | R3709516 |
    | Tobias Wagner | M8264175 |
    | Eva Schmidt | N1583746 |

1. Still in **OneDrive** Create another workbook and copy this table into it.

    | Name | Passport Number |
    | --- | --- |
    | Leon Müller | L82731904 |
    | Emilia Schneider | E50924671 |
    | Noah Fischer | N13058462 |
    | Mia Weber | M90571238 |
    | Paul Wagner | P17463920 |
    | Lina Becker | L40298573 |
    | Ben Hoffmann | B76821095 |
    | Emma Schäfer | E34105769 |
    | Felix Koch | F69280341 |
    | Lara Richter | L05329874 |
    | Jonas Klein | J48026715 |
    | Lea Wolf | L91570436 |
    | Niklas Schröder | N06734185 |
    | Hanna Neumann | H78452093 |
    | Tim Schwarz | T23690458 |
    | Marie Zimmermann | M31947620 |
    | Luis Hartmann | L87420539 |
    | Sofia Krüger | S50873961 |
    | Jan Lange | J76241508 |
    | Amelie Werner | A63094751 |
    | David Schmitt | D19574086 |
    | Johanna Krause | J40862597 |
    | Elias Maier | E97264015 |
    | Clara Lehmann | C54098627 |
    | Moritz Schmid | M86130542 |
    | Greta Fuchs | G27915486 |
    | Fabian Kuhn | F40761982 |
    | Sarah Vogel | S96820531 |
    | Tom Günther | T15349086 |
    | Nele Peters | N70624158 |

1. In Microsoft Purview, wait until the Policy sync status for all DLP policies is **Sync completed**. This can take some time. You may want to return to this lab later, if it takes too long.

1. Share both workbooks with an external user (suggestet: your own e-mail address). After a short moment, notice the icon and the quicktip (figure 8).

    ![Contains sensitive information. Some commands aren't available.][figure 8]
    *figure 8: Contains sensitive information. Some commands aren't available.*

    If click the **Share** command, you receive a message like in figure 9.

    ![Sharing is limited on this item][figure 9]
    *figure 9: Sharing is limited on this item.*

    Copy the link and try to open it outside the virtual machine. You should receive a message telling you that access is denied because of organization's policies (figure 10).

    ![Access Denied - Due to organizational policies you can't access this resource][figure 10]
    *figure 10: Due to organizational policies you can't access this resource.*

    You cannot override the policy in OneDrive or SharePoint. If you want to try the override functionality, try to send the workbook with the lesser passport numbers in Outlook to an external reciepient.

## Exercise 6: Validate information protection and retention labels

It may take up to a week until the labels are visible. You may revisit this exercise later.

1. Open OneDrive as **LynneR@\<your tenant\>**.
1. Create a Word document or open an existing file.
1. Click the file name at the top.
1. Navigate to Mark 8 Project Team site.
1. In **Site Information**, you should be able to apply a privacy setting.
1. Try to create a new SharePoint site. You should be required to choose a privacy setting.

    You should be able to apply a sensitivity label and a retention label.

[figure 1]: ../../images/GDPR-enhanced-policy.png
[figure 2]: ../../images/sensitivity-label-public.png
[figure 3]: ../../images/sensitivity-label-internal.png
[figure 4]: ../../images/sensitivity-label-confidential.png
[figure 5]: ../../images/sensitive-label-pii.png
[figure 6]: ../../images/Labeling-policy-contoso-default.png
[figure 7]: ../../images/Retention-label-Financial-data.png
[figure 8]: ../../images/sensitive-content-icon-quicktip.png
[figure 9]: ../../images/Sharing-is-limited.png
[figure 10]: ../../images/Access-Denied-organizational-policies.png

