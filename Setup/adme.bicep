param location string = 'eastus'
param dataPartitionNames string = 'demodata'
param admeName string = 'adme'
param authAppId string = '6dec5e25-d290-429e-933f-c9725a939224'

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
