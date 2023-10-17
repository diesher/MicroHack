# Challenge 2 : Apply patches on your machines (scheduled and one-time updates)

Once you have completed the assessment phase, the next critical step is patching. This phase involves setting up schedules that dictate when and how patches will be applied. In the context of these schedules, we often refer to a "maintenance configuration," which encompasses several crucial elements:

* First and foremost, you need to determine whether your patching schedule is intended to be a one-time event or a recurring one. This decision sets the foundation for your patch deployment strategy. You can then specify a time window during which the maintenance activities will take place. This is particularly useful for ensuring that updates occur during off-peak hours, minimizing disruptions.

* The scheduling process also offers the flexibility to configure repeat intervals. For instance, you may want to set up patches to be deployed on a monthly basis. Moreover, you can incorporate an offset feature, which is especially handy for scenarios like Patch Tuesdays. With this feature, you can stagger updates by offsetting them by a specific number of days. This enables you to target different groups of machines at various times, aligning with your testing and deployment strategies.

* Creating distinct schedules for different machine groups is pivotal. These groups can be determined based on tags, environment types (e.g., test or production), or geographical locations. This approach ensures that your patching process is tailored to the specific needs and requirements of each group.

* Dynamic scoping is another key element that empowers you to efficiently manage the assignment of patches to resources. This dynamic scoping can be based on various criteria, such as resource groups, locations, operating system types, or tags. Each dynamic scope can encompass a maximum of one thousand resources, and there's a cap of three thousand resources per schedule. For scenarios that don't fit neatly into dynamic scopes, you also have the option to manually add resources to your schedule.

* Once you have defined the scope and schedule, you move on to selecting the types of updates you wish to include or exclude. This level of granularity allows you to fine-tune your patching strategy.

* Finally, you create the schedule, which will govern when patches are applied to your specified resources. Alongside scheduled updates, there is also an option for on-demand patching. This feature enables you to initiate updates immediately on a batch of machines, typically up to one hundred at a time. This can be useful for addressing critical updates or newly provisioned virtual machines that require immediate patching.

It's important to note that this process doesn't incorporate human approval, so careful scheduling and clear communication are essential. You should avoid the temptation to apply patches to all machines simultaneously. Instead, it's prudent to adhere to safe deployment practices, staggering updates and allowing sufficient time for testing and validation.


## **Goal**

The goal of this challenge is to  Learn how to use Azure Update Manager to schedule recurring updates on your machines and manage dynamic scope for recurring updates and to performe urgent one-time updates on machines.

## Actions
Please perform these tasks to complete challenge 2: 

### Task 1: Update your machines by adding Tag to group the machines
Use Azure resources tags to group the servers as followed:
- VM_001: Environment: test
- VM_002: Environment: Prod
- ArcVM: Environment: Onprem

### Task 2: Create maintenance configurations for different update groups 
In this task, you will be tasked with creating and configuring maintenance schedules for three different update groups: test, prod, and Onprem, each with its own unique requirements and constraints. This will test your understanding of Azure Update Manager and its capabilities:
- Create a maintenance configuration for the test group that runs every day at 10:00 AM and installs all critical and security updates on Windows VMs in the West US region. Use tags to filter the machines by environment and role. Assign a tag named “test” to the maintenance configuration1.
- Create a maintenance configuration for the prod group that runs on the second Tuesday of every month at 2:00 AM and installs only the updates with the KB IDs specified in a text file. Use Azure Policy to assign the maintenance configuration to Linux VMs in the East US region that have a tag named “prod”. Enable remediation to apply the policy to existing machines2.
- Create a maintenance configuration for the Onprem group that runs on the last Friday of every month at 11:00 PM and installs all feature updates on Azure Arc-enabled servers in Germany. Use resource groups to filter the machines by location and type. Assign a tag named “Onprem” to the maintenance configuration1.

### Task 3: perform a one-time update

Due to a security break you need to perform an immediate, one-time update on a specific VM in the ‘test’ resource group. This update should include all critical and security updates. Use the Azure portal to manually initiate the ‘Update Now’ action on the VM. Monitor the progress of the update in the Azure portal and take note of any issues or failures. This task will test your ability to perform immediate updates and troubleshoot any potential issues. Remember, immediate updates can be disruptive, so they should be used judiciously in a production environment.

### Task 4 (Optional): Onboard to schedule by using Azure Policy
For this task, use an Azure Policy that enforces a specific schedule for installing updates. The policy should target all VMs in the ‘prod’ resource group. The schedule should be set to install updates every Sunday at 3:00 AM. The policy should also enable automatic reboot after installing updates if required. Use Azure Policy’s remediation feature to automatically create a deployment for non-compliant resources. This task will test your ability to use Azure Policy for managing update schedules across multiple resources. Remember to review the policy compliance status in the Azure Policy compliance dashboard after you have assigned the policy.

### Learning Resources

- [Schedule recurring updates at scale](https://learn.microsoft.com/en-us/azure/update-center/scheduled-patching?tabs=schedule-updates-single-machine%2Cschedule-updates-scale-overview#schedule-recurring-updates-at-scale)
- [Prerequisites for scheduled patching](https://learn.microsoft.com/en-us/azure/update-center/scheduled-patching?tabs=schedule-updates-single-machine%2Cschedule-updates-scale-overview#prerequisites-for-scheduled-patching)
- [Onboard to schedule by using Azure Policy](https://learn.microsoft.com/en-us/azure/update-center/scheduled-patching?tabs=schedule-updates-single-machine%2Cschedule-updates-scale-overview#onboard-to-schedule-by-using-azure-policy)
- [Onboard to schedule by using Azure Policy](https://learn.microsoft.com/en-us/azure/update-center/updates-maintenance-schedules)

## Success Criteria

- You should sucessfully create a maintenance configuration for your machines, specifying the updates to be installed, the schedule and the tags.  
- One of the Arc-enable is up-to-date 

### Congrats :partying_face:

 Move on to [Challenge 2 : Schedule updates and manage dynamic scope](02_challenge.md).

 ### Solution - Spoilerwarning

[Solution Steps](../walkthrough/challenge-1/solution.md)
  