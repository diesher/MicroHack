# Challenge 1 - On-demand assessment and updates

For the patch management in Azure VM or non-Azure machine, **Azure Update Manager**, employs a new Azure extension, auto-installed during tasks like updates checks. It supports deployment to Azure VMs or Azure Arc-enabled servers, managed via Azure VM agents for Azure VMs, and Azure Arc-enabled servers agent for non-Azure machines. Update Manager handles extension agent setup and needs no manual intervention if agents are operational. The extension locally runs code to interact with the system, gathering update status, initiating approved update installations, and reporting data to Update Manager. This facilitates analysis with Azure Resource Graph, enabling efficient management of your machines either directly or at scale.

**Azure Update Manager** is accessible in all Azure public regions where virtual machines are offered. However, for Azure Arc-enabled servers, support is currently limited to only the specified [regions](https://learn.microsoft.com/en-us/azure/update-center/support-matrix?tabs=azurearc%2Cazurevm-os#supported-regions). 


## **Goal**

The goal of the first exercise is to Take immediate control of your updates by manually checking, installing updates and changing settings like periodic assessment, patch orchestration options.

After the challenge you should to be able to perform assessment and updates on demand on your machines. 

> **Warning**
> 
> Please note that enabling periodic assessments for Arc-enabled machines that Defender for Servers Plan 2 is not enabled on their subscription or Connector, is subject to Azure Update Manager pricing. Arc-Enabled machines that Defender for Servers Plan 2 is enabled on their related Subscription or Connector, or any Azure VN, are eligible for periodic assessments with no additional cost
> 


## Actions
Please perform these tasks to complete challenge 1: 

### Task 1: Check for updates on a single Azure VM

Update Manager enables you to inspect your machines for the latest updates whenever needed, on-demand. You can observe the recent update status and respond accordingly. Verify if an update is available for one of your Azure VM. 

### Task 2: Check for updates on an Arc-enabled server

Update Manager enables you to inspect your machines for the latest updates whenever needed, on-demand. You can observe the recent update status and respond accordingly. Verify if an update is available for one of your Arc-enabled server.

### Task 3: Install updates on by machine
Update Manager allows you to secure your machines immediately by installing updates on demand. Install one-time update for one of your machines.

### Task 4: Configure periodic assessment and patch orchestration using update settings

`Periodic assessment` is a feature enabling automatic update checks by Update Manager. Activating this on your machines allows for daily update retrievals and viewing of the current compliance status of your machines. 

`Patch Orchestration` provides the following options:
* **Customer Managed Schedules**: It allows to schedule and customize patch deployments according to user perferences using maintenance configuration.
* **Azure Managed - Safe Deployment**: It allows to orchestrate patches across availability sets, with Azure safety checks.
* **Windows automatic updates**: It is best for scenarios where interrupting workloads for patching isn't an issue.
* **Manual updates**: This allows you to turns off Windows Automatic Updates and install patches or pick a different solution (e.g. SCCM)
**Image default**: it uses thew default patching configuration in the image used to create the VM.


Use the update setting to perform periodic assessment and orchestrates patches for one or two VMs.



### Learning Resources

- [Overview of Azure Update Manager](https://learn.microsoft.com/en-us/azure/update-center/overview?tabs=azure-vms)
- [Support matrix for Azure Update Manager](https://learn.microsoft.com/en-us/azure/update-center/support-matrix?tabs=azurevm%2Cazurevm-os)
- [Assessment options in Update Manager](https://learn.microsoft.com/en-us/azure/update-center/assessment-options)
- [Update options in Azure Update Manager](https://learn.microsoft.com/en-us/azure/update-center/updates-maintenance-schedules)

## Success Criteria

- one of the Azure VM is up-to-date  
- One of the Arc-enable is up-to-date 

### Congrats :partying_face:

 Move on to [Challenge 2 : Schedule updates and manage dynamic scope](02_challenge.md).

 ### Solution - Spoilerwarning

[Solution Steps](../walkthrough/challenge-1/solution.md)
