# Module 1 - Authentication and authorization
In this module you will learn how to authenticate towards OSDU using Oauth 2.0 and how to use the OSDU API to retrieve information about your user.

This module will cover the following topics:
- **1. Authentication**: How to authenticate towards OSDU using Oauth 2.0 using OSDU CLI and Postman.
- **2. Entitlements Service**: User and Group management.
- **3. Legal Service**: Legal tags and data categorization management.
- **4. Schema Service**: Schema management.

## 1. Authentication
OSDU uses Oauth 2.0 for authentication. In this section you will learn how to authenticate towards OSDU using Oauth 2.0 using OSDU CLI and Postman.

### 1.1 OSDU CLI
1. Download the [config file](./config?raw=1) (Right Click - Save As) and save it to `C:/Users/\<username\>/.osducli` (Windows) or `~/.osducli` (Linux/MacOS).
2. Open a terminal and run the following command to authenticate towards OSDU:
    ```bash
    osdu status
    ```
3. Perform the interactive authentication in your browser.    
4. OSDU CLI will now attempt a connection towards all the Core APIs. You should see the following output:
    ```bash
    CRS Catalog service     200         OK
    CRS Converter service   200         OK
    File service            200         OK
    Entitlements Service    200         OK
    Legal service           200         OK
    Schema service          200         OK
    Search service          200         OK
    Storage service         200         OK
    Unit service            200         OK
    Workflow service        200         OK
    ```
5. Run the following command to review the configuration:
    ```bash
    osdu config list
    ```
6. Run the following command to list out your group assignment:
    ```bash
    osdu entitlements mygroups
    ```

### 1.2 Postman
1. Open Postman and go to `Environments` and select the `ADME` environment.
2. Configure it using the details from the OSDU CLI (`osdu config list`).
3. Go to `Collections` and select the `ADME (M14)` collection (root folder).
4. Select the `Authorization` phane and click `Get New Access Token`.
5. Perform the interactive authentication in your browser. Ensure that the token creation is successful.
6. Run the following request to make sure the token is valid: `Entitlements > (GET) listGroups`.
7. Compare the response with the output from the OSDU CLI (`osdu entitlements mygroups`).

## 2. Entitlements Service
The Entitlements Service is used to manage users and groups in OSDU. In this section you will learn how to create a new user and group.

## 3. Legal Service
The Legal Service is used to manage legal tags and data categorization in OSDU. In this section you will learn how to create a new legal tag.

## 4. Schema Service
The Schema Service is used to manage schemas in OSDU. In this section you will learn how to create a new schema.