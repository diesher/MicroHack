# Challenge 1 - Assess machines for missing updates

Let's delve into the inner workings of the assessment process in the context of enabling large-scale, controlled patching. To initiate patching, the first step is running an assessment. This assessment is vital as it tells us which patches are installed and which are missing. On Windows, Azure update manager uses the Windows Update Agent, while on Linux, we employ OVAL-compatible tools for assessing missing patches. OVAL definitions can be fetched from a local or remote repository.

To ensure continuous assessment, you can establish a periodic assessment, often set at every 24 hours, for both Azure and Arc-enabled server operating systems.
Alternatively, we can trigger assessments by assigning policies through Azure Policy, particularly beneficial for managing numerous systems. We also have the option to perform on-demand assessments, manually checking up to 100 machines for immediate updates using local tools.

Once assessments conclude, we gain access to detailed reporting, offering insights into patch statuses. This reporting extends to both the assessment phase and patch execution, providing transparency into patch management and informed decision-making for your systems.


## **Goal**

The goal of the first challenge is to take immediate control of your updates by assessing the availability of updates and gain transparency about available patches through the reporting. 

After the challenge you should to be able to perform on-demand assessment and periodic assessment on your machines. 


## Actions
Please perform these tasks to complete challenge 1: 

### Task 1: Configure periodic assessment and patch orchestration using update settings
Your task is to configure and enable periodic assessment for both an Azure Virtual Machine (VM) and an Arc-Enabled Server. Periodic assessment ensures that your systems stay up-to-date with the latest updates and compliance status. Additionally, you will check Azure Update Manager reporting (overview) to see which recommended updates are available for your machines. 

> **Note** : Patch orchestration is not applicable to Arc-enabled servers. To schedule updates on Azure machines, please change patch orchestration to "Customer Managed Schedules". This will set Patch mode to "AutomaticByPlatform" and BypassPlatformSafetyChecksOnUserSchedule to "true", which will ensure machines are patched using your configured schedules and are not autopatched. For Hotpatch compatible machines, the patch orchestration "Customer Managed Schedules" is only allowed when Hotpatch is disabled. [Learn more](https://learn.microsoft.com/en-us/azure/update-center/prerequsite-for-schedule-patching?tabs=new-prereq-portal%2Cauto-portal&WT.mc_id=Portal-Microsoft_Azure_Automation)

### Task 2: Check for updates on a single Azure VM (On-demand assessment)

You have the option to trigger a software updates compliance scan on a machine to obtain an up-to-date inventory of available operating system updates. Now your task is to perform a check for available updates for an single server (Do this on both an Azure Virtual Machine (VM) and an Arc-Enabled Server). This will involve verifying the update status, types of updates, and their installation readiness. 


### Task 3: Assign built-in policies for regularly checking updates at scale
For this, you will enable Periodic Assessment for machines in your resource group at scale using Azure Policy. As explained before Periodic Assessment simplifies the process of checking for available updates and ensures that your machines stay up-to-date without manual intervention. To complete this task you will need to:
- Enable Periodic Assessment for your Azure machines by using Azure Policy
- Enable Periodic Assessment for your Azure Arc-enabled machines by using Azure Policy
- Monitor if Periodic Assessment is enabled for your machines
- monitor compliance of resources and remediation status


### Learning Resources

- [Overview of Azure Update Manager](https://learn.microsoft.com/en-us/azure/update-center/overview?tabs=azure-vms)
- [Support matrix for Azure Update Manager](https://learn.microsoft.com/en-us/azure/update-center/support-matrix?tabs=azurevm%2Cazurevm-os)
- [Assessment options in Update Manager](https://learn.microsoft.com/en-us/azure/update-center/assessment-options)
- [Automate assessment at scale by using Azure Policy](https://learn.microsoft.com/en-us/azure/update-center/periodic-assessment-at-scale)


## Success Criteria

- Periodic assessment is configure for an Azure VM and an Arc-enabled Server
- On-demand assessment has been done for the remaining VMs
- An Azure Policy is configure to performed periodic assessment at the scope of the resource group.

### Congrats :partying_face:

 Move on to [Apply patches on your machines (scheduled and one-time updates)](02_challenge.md).

 ### Solution - Spoilerwarning

[Solution Steps](../walkthrough/challenge-1/solution.md)
