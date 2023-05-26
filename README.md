# OSDU Bootcamp

## Introduction
This repository contains the material for the OSDU Bootcamp. The bootcamp is a hands-on workshop where you will learn how to use the OSDU platform. The bootcamp is divided into modules, each module contains a set of exercises that you will complete. The exercises are designed to give you a basic understanding of the OSDU platform and how to use it.

## Preparations
Please perform these preparations **before attending the bootcamp**, this will ensure that you can get the most out of the bootcamp and avoids spending time on installing and configuring software.

### 1. Install OSDU CLI
The OSDU CLI is a command line tool that allows you to interact with the OSDU platform. It is used to ingest data, create and manage data partitions, and more. The CLI is available for Windows, Linux and MacOS. Please follow the instructions in the [OSDU CLI documentation](https://community.opengroup.org/osdu/documentation/-/blob/master/docs/using-cli.md) to install the CLI.

### 2. Install Postman
Postman is a tool that allows you to interact with REST APIs. It is used in the bootcamp to interact with the OSDU APIs. Please follow the instructions in the [Postman documentation](https://learning.postman.com/docs/getting-started/installation-and-updates/) to install Postman.

### 3. Import Postman ADME Collection
The Postman collection contains a set of requests that are used in the bootcamp. Please follow the instructions in the [ADME Postman Collection](https://github.com/EirikHaughom/ADME/tree/main/Guides/Postman%20Collection) to import the collection and environment.

## Modules
The bootcamp is built up of a set of modules that can be picked based on the audience. 

### Presentations
| Module | Description | PowerPoint |
| --- | --- | --- |
| OSDU Introduction | Introduction about OSDU and the core promise of OSDU. Include end user perspective / value markers. | [Link]() |
| ADME Introduction | Overview of Azure Data Manager for Energy (ADME) and the value it brings | [Link]() |
| OSDU Concepts | Introduction to the building blocks of OSDU. Core services, DDMS, Ingestion, scemas, data structure +++, Master/reference Data | [Link]() |
| ADME Deployments | Get ADME available for your project: DEV instance, Cost management, Working with logs using Azure | [Link]() |
| Tools and utilities | OSDU CLI, Postman, Notebooks: Using OSDU Python SDK, Using native Python | [Link]() |

### Hand-on-Labs
| Module | Description | PowerPoint | Lab Module |
| --- | --- | --- | --- |
| Lab Module 1: Authentication and authorization | Learn how to authenticate towards OSDU using Oauth 2.0 and how to use the OSDU API to retrieve information about your user. | [Link]() | [Link](/Labs/Module%201%20-%20Authentication%20and%20authorization/) | 
| Lab Module 2: Configuring the OSDU data platform | Learn how to configure the OSDU data platform and prapare it for data ingestion. | [Link]() | [Link](/Labs/Module%202%20-%20Configuring%20the%20OSDU%20data%20platform/) |
| Lab Module 3: Ingesting and reading data through Core APIs | Learn how to use the OSDU API to read and write data to the OSDU platform using: File/Storage Service: Manual ingestion, Workflow Service: Manifest-based ingestion | [Link]() | [Link](/Labs/Module%203%20-%20Ingesting%20and%20reading%20data%20through%20Core%20APIs/) | 
| Lab Module 4: Constructing Searches | Learn how to use the OSDU Search API to search for data in the OSDU platform. | [Link]() | [Link](/Labs/Module%204%20-%20Constructing%20Searches/) |
| Lab Module 5: Working with the Seismic DDMS | Learn how to use the OSDU API to read and write seismic data to the OSDU platform using the Seismic DDMS. | [Link]() | [Link](/Labs/Module%205%20-%20Working%20with%20the%20Seismic%20DDMS/) |
| Lab Module 6: Working with the Wellbore DDMS | Learn how to use the OSDU API to read and write wellbore data to the OSDU platform using the Wellbore DDMS. | [Link]() | [Link](/Labs/Module%206%20-%20Working%20with%20the%20Wellbore%20DDMS/) |
| Lab Module 7: Working with the WellDelivery DDMS | Learn how to use the OSDU API to read and write well delivery data to the OSDU platform using the WellDelivery DDMS. | [Link]() | [Link](/Labs/Module%207%20-%20Working%20with%20the%20WellDelivery%20DDMS/) |
| Lab Module 8: Working with the Production DDMS | Learn how to use the OSDU API to read and write production data to the OSDU platform using the Production DDMS. | [Link]() | [Link](/Labs/Module%208%20-%20Working%20with%20the%20Production%20DDMS/) |

### OSDU Introduction
Introduction about OSDU and the core promise of OSDU. Include end user perspective / value markers. 

### ADME Introduction
ADME and what ADME brings on top of OSDU 

### OSDU Concepts
Introduction to the building blocks of OSDU. Core services, DDMS, Ingestion, scemas, data structure +++, Master/reference Data 

### ADME Deployments
Get ADME available for your project: 
* DEV instance 
* Cost management 
* Working with logs using Azure 

### Tools and utilities
* OSDU CLI 
* Postman 
* Notebooks
    * Using OSDU Python SDK
    * Using native Python
* Power BI from Microsoft
* Spotfire from Tibco
* Known third-party domain tools
    * EarthNet from ESA
    * IVAAP from INT
    * Petrel from SLB
    * SEDS from SLB
    * Seismic Engine from Halliburton
    * RMS from Aspentech

### Working with the OSDU Data Platform Core APIs
Hands on training working with OSDU Core API 
* WP/WPC 
* Custom Schema 
* WKS 
* Manifest ingestion 
* Search 

### Working with the Seismic DDMS
Working with Seismic in OSDU using the Seismic DDMS and the oVDS format 

### Working with the Wellbore DDMS
Working with welldata using the Wellbore DDMS 

### Working with the WellDelivery DDMS
Working with Welldelivery data using the WellDelivery DDMS 

### Working with the Reservoir DDMS
Working with Interpretation data using the Reservoir DDMS 

### OSDU Incubator features
* GeoSpatial Consumption Zone 
* External Data Services 
* Policy engine
* ADME and Experimental Features 

### Governance - both data ops and technology
Who, what and how to interact with the OSDU community (?)
