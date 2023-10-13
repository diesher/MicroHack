@description('Azure service principal client id')
param spnClientId string

@description('Azure service principal client secret')
@secure()
param spnClientSecret string

@description('Azure AD tenant id for your service principal')
param spnTenantId string

@description('Username for Windows account')
param AdminUsername string

@description('Password for Windows account. Password must have 3 of the following: 1 lower case character, 1 upper case character, 1 number, and 1 special character. The value must be between 12 and 123 characters long')
@minLength(12)
@maxLength(123)
@secure()
param AdminPassword string

@description('Name for your log analytics workspace')
param logAnalyticsWorkspaceName string

@description('Target GitHub account')
param githubAccount string = 'microsoft'

@description('Target GitHub branch')
param githubBranch string = 'arc_servers_levelup'

@description('Choice to deploy Bastion to connect to the client VM')
param deployBastion bool = false

@description('User github account where they have forked https://github.com/microsoft/azure-arc-jumpstart-apps')
param githubUser string = 'microsoft'

@description('Override default RDP port 3389 using this parameter. Default is 3389. No changes will be made to the client VM.')
param rdpPort string = '3389'

@description('Override default SSH port 22 using this parameter. Default is 22. No changes will be made to the client VM.')
param sshPort string = '22'


param location string = resourceGroup().location

var templateBaseUrl = 'https://raw.githubusercontent.com/${githubAccount}/azure_arc/${githubBranch}/azure_jumpstart_arcbox_servers_levelup/'

module clientVmDeployment 'clientVm/clientVm.bicep' = {
  name: 'clientVmDeployment'
  params: {
    AdminUsername: AdminUsername
    AdminPassword: AdminPassword
    spnClientId: spnClientId
    spnClientSecret: spnClientSecret
    spnTenantId: spnTenantId
    workspaceName: logAnalyticsWorkspaceName
    stagingStorageAccountName: stagingStorageAccountDeployment.outputs.storageAccountName
    templateBaseUrl: templateBaseUrl
    subnetId: mgmtArtifactsDeployment.outputs.subnetId
    deployBastion: deployBastion
    githubUser: githubUser
    location: location
    rdpPort: rdpPort
    sshPort: sshPort
  }
}

module stagingStorageAccountDeployment 'mgmt/mgmtStagingStorage.bicep' = {
  name: 'stagingStorageAccountDeployment'
  params: {
    location: location
  }
}

module mgmtArtifactsDeployment 'mgmt/mgmtArtifacts.bicep' = {
  name: 'mgmtArtifactsAndPolicyDeployment'
  params: {
    deployBastion: deployBastion
    location: location
  }
}

module AzureWinVmDeployment 'AzureNativeVms/windows.bicep' = {
  name: 'WinVmDeployment'
  params: {
    AdminUsername: AdminUsername
    AdminPassword: AdminPassword
    subnetId: mgmtArtifactsDeployment.outputs.subnetId
    deployBastion: deployBastion
    location: location
  }
}

module AzureLinuxVmDeployment 'AzureNativeVms/linux.bicep' = {
  name: 'LinuxVmDeployment'
  params: {
    AdminUsername: AdminUsername
    AdminPassword: AdminPassword
    subnetId: mgmtArtifactsDeployment.outputs.subnetId
    deployBastion: deployBastion
    location: location
  }
}


