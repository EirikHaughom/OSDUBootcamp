## Description

This postman collection includes all REST API calls available for Azure Data Manager for Energy (ADME) M14 core services. It is based on the native OSDU APIs, so it could also be used for anyone running a self-managed version of the OSDU M14 release.
<br />

## Services Covered
The services mentioned below are covered, and the API calls are imported from the official [ADME documentation](https://microsoft.github.io/adme-samples/).

- CRS Catalog
- CRS Converter
- Dataset
- Entitlements
- File
- Indexer
- Legal
- Notification
- Partition*
- Register
- Schema
- Search
- Seismic DDMS
- Storage
- Unit
- Well Delivery DDMS
- Wellbore DDMS
- Workflow

<sub>\* The Partition service is locked down on ADME, as data partitions are handled by Azure Resource Manager (ARM) through CLI, PowerShell or Azure Portal.</sub>

## Usage
1. Copy the link to the [Postman Collection JSON file](./json/ADME%20(M14).postman_collection.json?raw=1)
2. In Postman select *Import*.
3. Select *Link*.
4. Paste the link copied above.
5. Download the Postman Environment sent out by email and import it into Postman.

## Environment variables
| Variable |Format | Description |
|----------|-------|-------------|
|access_token|*N/A*|Value will be automatically populated by running the manual authentication API calls|
|refresh_token|*N/A*|Value will be automatically populated by running the manual authentication API calls|
|instance|contoso.energy.azure.com|Hostname of your ADME instance
|client_id|00000000-0000-0000-0000-000000000000|The App Registration client ID used to provision ADME|
|data_partition|contoso-opendes|The Data Partition ID from ADME (i.e. eirik-opendes)|
|client_secret|*N/A*|A valid App Registration secret for the above client_id|
|tenant_id|00000000-0000-0000-0000-000000000000|Azure AD tenant ID
|scope|00000000-0000-0000-0000-000000000000/.default openid profile offline_access|The scope to use when authenticating. The ID represents an App Registration ID (client_id)|
|baseUrl|https://{{instance}}|***Do not change***|
|username|*N/A*|Your Name or Company Alias|
|RESERVOIR_DDMS_HOST|https://|The hostname of the Reservoir DDMS service|
