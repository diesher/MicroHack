# Challenge 0 - Prerequisities: Deploy and explore lab environment

## **Goal**

The goal of this challenge is to explore the lab environment and understand the components and Azure resources that have been deployed.

After completing this challenge, you have successfully deployed a couple of `Azure VM and arc-enabled servers` as a base for the upcoming challenges.

## **Actions**

### Task 1: Deploy the lab environment 

If you haven't deployed the lab environment yet, please follow this:
- [Deploy to Azure (Bicep)](./resources/bicep/README.md)

### Task 2: Explore Azure Update Manager

- Once your deployment is finalized you can find the Update Management solution either in the **Updates** option of your VM blade or You can switch to Azute Update Manager service to explore the solution.

- Make use of the filters on the update manager page to drill down to the resource group you have just deployed.


### Learning Resources


### Learning Resources

- [Overview of Azure Update Manager](https://learn.microsoft.com/en-us/azure/update-center/overview?tabs=azure-vms)

## Success Criteria

- The lab environment has been successfully deployed
- From each VM you can access the **Updates** option under the VM blades
- From the Azure Update Manager service page you set Filters to only show the scope of the lab resource group.


### Congratulations :

 Move on to [Challenge 1 : On-demand assessment and updates](01_challenge.md).
