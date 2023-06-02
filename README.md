# OSDU Bootcamp

## Introduction
This repository contains the material for the OSDU Bootcamp. The bootcamp is a hands-on workshop where you will learn how to use the OSDU platform. The bootcamp is divided into modules, each module contains a set of exercises that you will complete. The exercises are designed to give you a basic understanding of the OSDU platform and how to use it.

## Preparations
Please perform these preparations **before attending the bootcamp**, this will ensure that you can get the most out of the bootcamp and avoids spending time on installing and configuring software.

### 1. Install OSDU CLI
The OSDU CLI is a command line tool that allows you to interact with the OSDU platform. It is used to ingest data, create and manage data partitions, and more. The CLI is available for Windows, Linux and MacOS. Please follow the instructions in the [OSDU CLI documentation](https://community.opengroup.org/osdu/ui/data-loading/osdu-cli) to install the CLI.

### 2. Install Postman
Postman is a tool that allows you to interact with REST APIs. It is used in the bootcamp to interact with the OSDU APIs. Please follow the instructions in the [Postman documentation](https://learning.postman.com/docs/getting-started/installation-and-updates/) to install Postman.

### 3. Import Postman OSDU Bootcamp Collection
The Postman collection contains a set of requests that are used in the bootcamp. Please follow the instructions in the [OSDU Bootcamp Postman Collection](/Tools/Postman%20Collection/) to import the collection and environment.

## Modules
The bootcamp is built up of a set of modules that can be chosen based on the audience. 

### Presentations (Day 1, first half)
| Module | Description | Time Estimate | PowerPoint |
| --- | --- | --- | --- |
| OSDU Introduction | Introduction about OSDU and the core promise of OSDU. Include end user perspective / value markers. | X min | [Link](//Presentations/1.%20OSDU%20Introduction.pptx) |
| ADME Introduction | Overview of Azure Data Manager for Energy (ADME) and the value it brings | 15 min | [Link](/Presentations/2.%20ADME%20Introduction.pptx) |
| OSDU Concepts | Introduction to the building blocks of OSDU. Core services, DDMS, Ingestion, schemas, data structure +++, Master/reference Data | X min | [Link](/Presentations/3.%20OSDU%20Concepts.pptx) |
| OSDU Incubator features | Overview of the incubator features (GeoSpatial Consumption Zone, External Data Services, Policy engine, ADME and Experimental Features) | X min | [Link](/Presentations/4.%20OSDU%20Incubator%20features.pptx) |
| ADME Deployments | Get ADME available for your project: DEV instance, Cost management, Working with logs using Azure | X min | [Link](/Presentations/5.%20ADME%20Deployments.pptx) |
| Tools and utilities | OSDU CLI, Postman, Notebooks: Using OSDU Python SDK, Using native Python, Power BI, Spotfire and 3rd party tools (ESA EarthNet, INT IVAAP, SLB Petrel, SLB SEDS, Halliburton Seismic Engine, AspenTech RMS) | X min | [Link](/Presentations/6.%20Tools%20and%20utilities.pptx) |


### Hand-on-Labs (Day 1, second half + Day 2)
| Module | Description | Lab Module |
| --- | --- | --- |
| Lab Module 1: Authentication and authorization | Learn how to authenticate towards OSDU using Oauth 2.0 and how to use the OSDU API to retrieve information about your user. | [Link](/Labs/Module%201%20-%20Authentication%20and%20authorization/) | 
| Lab Module 2: Configuring the OSDU data platform | Learn how to configure the OSDU data platform and prapare it for data ingestion. | [Link](/Labs/Module%202%20-%20Configuring%20the%20OSDU%20platform/) |
| Lab Module 3: Ingesting and reading data through Core APIs | Learn how to use the OSDU API to read and write data to the OSDU platform using: File/Storage Service: Manual ingestion, Workflow Service: Manifest-based ingestion | [Link](/Labs/Module%203%20-%20Ingesting%20and%20reading%20data%20through%20Core%20APIs/) | 
| Lab Module 4: Constructing Searches | Learn how to use the OSDU Search API to search for data in the OSDU platform. | [Link](/Labs/Module%204%20-%20Constructing%20Searches/) |
| Lab Module 5: Working with the Seismic DDMS | Learn how to use the OSDU API to read and write seismic data to the OSDU platform using the Seismic DDMS. | [Link](/Labs/Module%205%20-%20Working%20with%20the%20Wellbore%20DDMS/) |
| Lab Module 6: Working with the Wellbore DDMS | Learn how to use the OSDU API to read and write wellbore data to the OSDU platform using the Wellbore DDMS. | [Link](/Labs/Module%206%20-%20Working%20with%20the%20Well%20Delivery%20DDMS/) |
| Lab Module 7: Working with the WellDelivery DDMS | Learn how to use the OSDU API to read and write well delivery data to the OSDU platform using the WellDelivery DDMS. | [Link](/Labs/Module%207%20-%20Working%20with%20the%20Seismic%20DDMS/) |
| Lab Module 8: Working with the Reservoir DDMS | Learn how to use the OSDU API to read and write reservoir data to the OSDU platform using the Reservoir DDMS. | [Link](/Labs/Module%208%20-%20Working%20with%20the%20Reservoir%20DDMS/)<br>[pptx](/Presentations/8.%20Reservoir%20DDMS.pptx)|
