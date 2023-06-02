param location string = 'eastus'
param dataPartitionNames string = 'demodata'
param admeName string = 'adme'
param authAppId string = 'Replace with your authAppId'

resource adme 'Microsoft.OpenEnergyPlatform/energyServices@2022-04-04-preview' = {
    name: admeName
    location: location
    properties: {
    authAppId: authAppId
    dataPartitionNames: [
      {
        name: dataPartitionNames
      }
    ]
  }
}
