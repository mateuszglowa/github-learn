@description('The Azure region into which the resources should be deployed.')
param location string

param environmentConfigurationMap object

param toyManualsStorageAccountName string

param environmentType string

resource toyManualsStorageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: toyManualsStorageAccountName
  location: location
  kind: 'StorageV2'
  sku: environmentConfigurationMap[environmentType].toyManualsStorageAccount.sku
}
