# Challenge 0 - Prerequisities: Deploy and explore lab environment

## **Goal**

The goal of this challenge is to explore the lab environment and understand the components and Azure resources that have been deployed.

If you haven't deployed the lab environment yet, please follow this:
- [Deploy to Azure (Bicep)](./resources/bicep/README.md)

After completing this challenge, you have successfully deployed a couple of `Azure VM and arc-enabled servers` as a base for the upcoming challenges.

## **Actions**

### Task 1: Deploy a Azure windows VM and a linux VM 

Go to the Azure Portal and navigate to the resource group `rg-microhack-update-manager`. Look at the resources that have been deployed and think about possbile monitoring scenarios:

- What kind of resources have been deployed (IaaS, PaaS)?
- How would you monitor the resources?
- What kind of logs and metrics have you in mind to monitor?
- How do I get informed about downtime and failures?

### Task 2: Deploy the modified Jumpstart ArcBox

Go to the Azure Portal and navigate to the resource group `rg-microhack-monitoring`. Look at the resources that have been deployed and think about possbile monitoring scenarios:

- What kind of resources have been deployed (IaaS, PaaS)?
- How would you monitor the resources?
- What kind of logs and metrics have you in mind to monitor?
- How do I get informed about downtime and failures?



### Learning Resources

- [Overview of Log Analytics in Azure Monitor - Azure Monitor.](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/log-analytics-overview)
- [Pricing - Azure Monitor | Microsoft Azure.](https://azure.microsoft.com/en-in/pricing/details/monitor/)
- [Create a dashboard in the Azure Portal](https://learn.microsoft.com/en-us/azure/azure-portal/azure-portal-dashboards)
- [Share Azure dashboards by using Azure role-based access control](https://learn.microsoft.com/en-us/azure/azure-portal/azure-portal-dashboard-share-access)
- [Create a workbook in Azure Monitor](https://learn.microsoft.com/en-us/azure/azure-monitor/visualize/workbooks-create-workbook)

## Success Criteria

- Arc-enabled servers have been successfull onboarded
- Azure VMs are up and running


### Congrats :partying_face:

 Move on to [Challenge 1 : On-demand assessment and updates](01_challenge.md).
