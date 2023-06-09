# Module 3 - Ingesting and reading data through Core APIs

In this module you will learn how to use the OSDU API to read and write data to the OSDU platform using:
- **File/Storage Service**: Manual ingestion
- **Workflow Service**: Manifest-based ingestion
- **CSV Parser**: Parsing CSV files through Workflow Service

## Prerequisites
Before beginning this tutorial, the following prerequisites must be completed:
- Download and install [Postman](https://www.postman.com/) desktop app (if not already done).
- We need to Import the sample Postman Collection & the Postman Environment files. 
- Then, we need to update the CURRENT_VALUE of the postman environment variables.
- Next step is to get the authentication token to be able to send the API calls from the imported postman collection.
- Follow the instructions at: [Postman Setup](../../Tools/Postman%20Collection/readme.md) untill #5 under *Authenticating* - *Interactive* - *User Token*


## 3.1 File/Storage Service: Manual ingestion
#### Objectives
- Ingest sample file into the Azure Data Manager for Energy Preview instance using Postman
- Retrieve/Download the ingested file using Postman

This section uses the following API from the Postman Collection: `Bootcamp > Manual Ingestion`. All of the sample API calls are numbered and these need to be executed sequentially.

**NOTE:** Please ensure to choose the **ADME** Environment on the Top Right corner, before triggering the Postman Collection:
![screenshot of Postman env selection](./img/selectenvpostman.png)

#### 3.1.1 Create a Legal Tag
Create a legal tag that will be added to the file metadata compliance purpose.
Navigate to the Postman Collection: `Bootcamp > Manual Ingestion > 01 - Create a Legal Tag` and click on **Send** button on the top right corner.

#### 3.1.2 List Legal Tags(Optional)
List out all the legal tags
Navigate to the Postman Collection: `Bootcamp > Manual Ingestion > 02 - listLegalTags` and click on **Send** button on the top right corner.


#### 3.1.3 Get a Signed URL for uploading a File
Get the signed URL path(in the staging area) to which the file will be uploaded
Navigate to the Postman Collection: `Bootcamp > Manual Ingestion > 03 - Get a Signed URL for uploading a file` and click on **Send** button on the top right corner.


#### 3.1.4 Upload a File
- Download the ![Sample file](./files/Guide%20to%20Data%20Governance.pdf?raw=1) to your local machine (you can choose any other filetype - CSV, LAS, JSON, etc.). 
- Navigate to the Postman Collection: `Bootcamp > Manual Ingestion > 04 - Upload a file` and click on **Send** button on the top right corner.
- Select this file in Postman by clicking the Select File option as shown in the Screenshot below
![screenshot of file selection](./img/fileupload.png)


#### 3.1.5 Upload File Metadata
Upload the file metadata information such as file location & other relevant fields.
Navigate to the Postman Collection: `Bootcamp > Manual Ingestion > 05 - Upload File Metadata` and click on **Send** button on the top right corner.


#### 3.1.6 Get the File Metadata
Call to validate if the metadata got created successfully
Navigate to the Postman Collection: `Bootcamp > Manual Ingestion > 06 - Get the File Metadata` and click on **Send** button on the top right corner.


#### 3.1.7 Get All Records (Optional)
List out the records for the kind `osdu:wks:dataset--File.Generic:1.0.0`
Navigate to the Postman Collection: `Bootcamp > Manual Ingestion > 07 - getAllRecords` and click on **Send** button on the top right corner.


#### 3.1.8 Download the ingested File
Get a Download URL (from the persistent storage area). Copy the url and paste it in the Browser to download the file.
Navigate to the Postman Collection: `Bootcamp > Manual Ingestion > 08 - downloadURL` and click on **Send** button on the top right corner.

<br/><br/>


## 3.2 Workflow Service: Manifest-based ingestion
#### Objectives
- Ingest sample manifests into the Azure Data Manager for Energy Preview instance using Postman
- Search for storage metadata records created during the manifest ingestion using Postman

This section uses the following API from the Postman Collection: `Bootcamp > Manifest Ingestion`. All of the sample API calls are numbered and these need to be executed sequentially.


#### 3.2.1 Create a Legal Tag
Create a legal tag that will be added to the file metadata compliance purpose.
Navigate to the Postman Collection: `Bootcamp > Manifest Ingestion > 01 - Create a Legal Tag` and click on **Send** button on the top right corner.


#### 3.2.2 Get a Signed URL for uploading a File
Get the signed URL path(in the staging area) to which the file will be uploaded
Navigate to the Postman Collection: `Bootcamp > Manifest Ingestion > 02 - Get a Signed URL for uploading a file` and click on **Send** button on the top right corner.


#### 3.2.3 Upload a File
- Download the raw ![sample wellbore csv file](./files/wellbore.csv) to your local machine. 
- Navigate to the Postman Collection: `Bootcamp > Manifest Ingestion > 03 - Upload a file` and click on **Send** button on the top right corner.
- Select this file in Postman by clicking the Select File option.



#### 3.2.4 Ingest Master, Reference & Work Product Component data
Ingest the Master, Reference and Work Product Component manifest metadata.
Navigate to the Postman Collection: `Bootcamp > Manifest Ingestion > 05 - Ingest Master, Reference and Work Product Component data` and click on **Send** button on the top right corner.


#### 3.2.5 Get Manifest Ingestion Workflow Status
The workflow will start and will be in the running state. Keep querying until it changes state to finished (typically 20-30 seconds).
Navigate to the Postman Collection: `Bootcamp > Manifest Ingestion > 06 - Get Manifest Ingestion Workflow Status` and click on **Send** button on the top right corner.


#### 3.2.6 Search Work Products(Optional)
Call Search service to retrieve the Work Product metadata records.
Navigate to the Postman Collection: `Bootcamp > Manifest Ingestion > 07 - Search Work Products` and click on **Send** button on the top right corner.


#### 3.2.7 Search Work Product Components(Optional)
Call Search service to retrieve the Work Product Component metadata records.
Navigate to the Postman Collection: `Bootcamp > Manifest Ingestion > 08 - Search Work Product Components` and click on **Send** button on the top right corner.


#### 3.2.8 Search for Dataset(Optional)
Call Search service to retrieve the Dataset metadata records.
Navigate to the Postman Collection: `Bootcamp > Manifest Ingestion > 09 - Search for Dataset` and click on **Send** button on the top right corner.


#### 3.2.9 Search for Master data(Optional)
Call Search service to retrieve the Master metadata records.
Navigate to the Postman Collection: `Bootcamp > Manifest Ingestion > 10 - Search for Master data` and click on **Send** button on the top right corner.


#### 3.2.10 Search for Reference Data(Optional)
Call Search service to retrieve the Reference metadata records.
Navigate to the Postman Collection: `Bootcamp > Manifest Ingestion > 11 - Search for Reference Data` and click on **Send** button on the top right corner.


<br/><br/>


## 3.3 CSV Parser: Parsing CSV files through Workflow Service
#### Objectives
- Ingest a sample wellbore data CSV file into the Azure Data Manager for Energy Preview instance using Postman
- Search for storage metadata records created during the CSV Ingestion using Postman


This section uses the following API from the Postman Collection: `Bootcamp > CSV Parser Ingestion`. All of the sample API calls are numbered and these need to be executed sequentially.

#### 3.3.1 Create a Schema
Generate a schema that adheres to the columns present in the CSV file.
Navigate to the Postman Collection: `Bootcamp > CSV Parser Ingestion > 01 - Create a Schema` and click on **Send** button on the top right corner.



#### 3.3.2 Get Schema details
Get the schema created in the previous step and validate it.
Navigate to the Postman Collection: `Bootcamp > CSV Parser Ingestion > 02 - Get Schema details` and click on **Send** button on the top right corner.



#### 3.3.3 Create a Legal Tag
Create a legal tag that will be added to the CSV data for data compliance purpose.
Navigate to the Postman Collection: `Bootcamp > CSV Parser Ingestion > 03 - Create a Legal Tag` and click on **Send** button on the top right corner.



#### 3.3.4 Get a Signed URL for uploading a CSV file
Get the signed URL path to which the CSV file will be uploaded.
Navigate to the Postman Collection: `Bootcamp > CSV Parser Ingestion > 04 - Get a signed URL for uploading a CSV file` and click on **Send** button on the top right corner.



#### 3.2.5 Upload a CSV file
- Download the raw ![sample wellbore csv file](./files/wellbore.csv) to your local machine. 
- Navigate to the Postman Collection: `Bootcamp > CSV Parser Ingestion > 05 - Upload a CSV file` and click on **Send** button on the top right corner.
- Select this file in Postman by clicking the Select File option.


#### 3.2.6 Upload CSV file metadata
Upload the file metadata information such as file location & other relevant fields.
Navigate to the Postman Collection: `Bootcamp > CSV Parser Ingestion > 06 - Upload CSV file metadata` and click on **Send** button on the top right corner.


#### 3.3.7 Trigger a CSV Parser Ingestion workflow
Triggers the CSV Parser ingestion workflow DAG.
Navigate to the Postman Collection: `Bootcamp > CSV Parser Ingestion > 07 - Trigger a CSV Parser Ingestion workflow` and click on **Send** button on the top right corner.


#### 3.3.8 Get CSV Parser Ingestion Workflow Status
Gets the status of CSV Parser Dag Run. Keep querying until it changes state to finished (typically 20-30 seconds).
Navigate to the Postman Collection: `Bootcamp > CSV Parser Ingestion > 08 - Get CSV Parser Ingestion Workflow Status` and click on **Send** button on the top right corner.


#### 3.3.9 Search for ingested CSV records
Search for ingested CSV records - Search for the CSV records created earlier.
Navigate to the Postman Collection: `Bootcamp > CSV Parser Ingestion > 09 - Search for ingested CSV records` and click on **Send** button on the top right corner.



## Congratulations! You have now completed the module!
Continue with the next module: [Module 4 - Constructing Searches](../Module%204%20-%20Constructing%20Searches/readme.md)