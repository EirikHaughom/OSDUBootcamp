param deploymentName string = 'adme-deployment'
param location string = 'eastus'
param storageAccountName string = '<storage-account-name>'
param containerName string = '<container-name>'

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

resource adme 'Microsoft.DataManager/managerServices@2022-01-01-preview' = {
  name: deploymentName
  location: location
  properties: {
    sku: {
      name: 'Standard'
      tier: 'Standard'
    }
    dataPlaneStorageAccountResourceId: storageAccount.id
    dataPlaneStorageAccountKey: listKeys(storageAccount.id, '2021-08-01').keys[0].value
    dataPlaneStorageAccountEndpoint: format('https://{0}.blob.core.windows.net', storageAccount.name)
    dataPlaneStorageAccountContainerName: containerName
  }
}
