# Creating a data loss prevention Policy

1. Open the Microsoft Purview admin center.
1. Click **Solutions** and **Data Loss Prevention**.
1. In Data Loss Prevention, click **Policies**.
1. In Policies click **Create Policy**.
1. In What info do you want to protect, click **Enterprise applications & devices**.
1. In Template or custom policy, select a template to start with and click **Next**.
1. In Name your DLP policy, type a name and description and click **Next**.
1. In Assign admin units, add or remove admin units at your choice and click **Next**.
1. In Locations, choose the locations you want the policy to apply to and click **Next**.
1. In Policy settings, select **Create or customize advanced DLP rules** and click **Next**.
1. In Customize advanced DLP rules do one of the following and click **Next**.

    * **Create rule**.
    * Expand a rule to see its contents.
    * Set the status to **On** or **Off**.
    * *Edit* a rule
    * *Copy* a rule.
    * *Move down* a rule.
    * *Move up* a rule.
    * *Delete* a rule.

    Each rule consists of

    * **Conditions**

        Conditions are organized in groups. Each group has a **Group name**, one or more **Sensitive info types**, and a **Group operator**. The group operator can be
        
        * **Any of these**
        * **All of these**

        For each sensitive info type you can set

        * **Low confidence**
        * **Medium confidence**
        * **High confidence**

        and a range of **Instance count**. The rule applies, if the instance count of the sensitive info type falls within this range.

        The groups are combined by the **AND** or **OR** operator.

    * **Exceptions**

        Exceptions work the same way as conditions, but exclude content from the rule.

    * **Actions**
    * **User notifications**
    * **User overrides**
    * **Incident reports**
    * **Additional options**

1. In Policy mode, choose either to **Run the policy in simulation mode**, **Turn the policy on immediately**, or **Leave the policy turned off**. In simulation mode, activate additional options as desired and click **Next**.
1. In Finish, review your settings and click **Submit**.

## References

1. [Create and depoly a data loss prevention policy | Microsoft Learn](https://learn.microsoft.com/en-us/purview/dlp-create-deploy-policy)

1. [Help prevent sharing sensitive items via SharePoint and OneDrive with external users | Microsoft Learn](https://learn.microsoft.com/en-us/purview/dlp-create-policy-spo-odb-external)

1. [Send email notifications and show policy tips for DLP policies | Microsoft Learn](https://learn.microsoft.com/en-us/purview/dlp-use-notifications-and-policy-tips)

1. [What policy templates include | Microsoft Learn](https://learn.microsoft.com/en-us/purview/dlp-policy-templates-include)

1. [Data loss prevention policy tips reference | Microsoft Learn](https://learn.microsoft.com/en-us/purview/dlp-policy-tips-reference)

1. [Data loss prevention policy tip reference for SharePoint in Microsoft 365 and OneDrive for work or school web client | Microsoft Learn](https://learn.microsoft.com/en-us/purview/dlp-spo-odbweb-policy-tips)