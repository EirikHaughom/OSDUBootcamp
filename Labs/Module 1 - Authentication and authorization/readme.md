# Module 1 - Authentication and authorization
In this module you will learn how to authenticate towards OSDU using Oauth 2.0 and how to use the OSDU API to retrieve information about your user.

This module will cover the following topics:
- **1. Authentication**: How to authenticate towards OSDU using Oauth 2.0 using OSDU CLI and Postman.

## 1. Authentication
OSDU uses Oauth 2.0 for authentication. In this section you will learn how to authenticate towards OSDU using Oauth 2.0 using OSDU CLI and Postman.

### 1.1 OSDU CLI
1. Download the [config file](./config?raw=1) (Right Click - Save As) and save it to `C:/Users/\<username\>/.osducli` (Windows) or `/users/<username>/.osducli/` (Linux/MacOS).
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
Ensure that you have installed the prerequisites listed in the [main readme](../../readme.md#preparations).

1. Open Postman and go to `Environments` and select the `ADME` environment.
2. Configure it using the details from the OSDU CLI (`osdu config list`).
3. Go to `Collections` and select the `ADME (M14)` collection (root folder).
4. Select the `Authorization` tab and click `Get New Access Token`.
5. Perform the interactive authentication in your browser. Ensure that the token creation is successful.
6. Run the following request to make sure the token is valid: `Entitlements > (GET) listGroups` and click *SEND*.
7. Compare the response with the output from the OSDU CLI (`osdu entitlements mygroups`).

### 1.3 Manual authentication as an App Registration (Service Principal)
This authentication mechanism is mainly used to integrate external applications programmatically into OSDU. We will use an example App Registration (client id and client secret) to authenticate towards OSDU.

1. In Postman, go to the `ADME (M14)` collection and open the folde `Authenticate > App Registration`.
2. Inspect the URI and Body of the request to understand the format.
| Parameter | Description |
| --- | --- |
| `client_id` | The client_id (also known as App Registration ID) of the external application |
| `client_secret` | The client_secret of the external application |
| `grant_type` | The grant_type of the authentication request. |
| `scope` | The scope of the authentication request. This should always start with the OSDU instance's client_id followed by the required scopes, e.g. `00000000000-0000-0000-00000000/.default openid profile offline_access` |
3. Click `Send` to execute the request.
4. Verify that the response contains an access token.
5. Execute a test-call to the entitlements service to verify that the token is valid.

Powershell example (Windows):<br> Replace `<instance>`, `<data-partition-id>` and `<access-token>` with your own values (not including <>). 
```powershell
$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("data-partition-id", "<data-partition-id>") ## Replace <data-partition-id> with your data partition id
$headers.Add("Accept", "*/*")
$headers.Add("Authorization", "Bearer <access_token>") ## Replace <access_token> with the access token from the response

$response = Invoke-RestMethod 'https://<instance>.energy.azure.com/api/entitlements/v2/groups' -Method 'GET' -Headers $headers ## Replace <instance> with your OSDU instance name
$response
```

Curl example (Linux):<br> Replace `<instance>`, `<data-partition-id>` and `<access-token>` with your own values (not including <>). 
```bash
curl --location --request GET 'https://<instance>.energy.azure.com/api/entitlements/v2/groups' \
--header 'data-partition-id: <data-partition-id>' \
--header 'Accept: */*' \
--header 'Authorization: Bearer <access-token>'
```

### 1.4 Inspect JWT/access token
1. Copy the JWT/access token from the Postman `Authorization` tab.
2. Open [https://jwt.ms/](https://jwt.ms/) and paste the token into the `Encoded` field.
3. Review the token and the claims, especially focus on object id (`oid`), tenant id (`tid`) and subject (`sub`).
4. Inspect your personal access token from the Postman `Authorization` tab on the `ADME (M14)` collection. Notice that the `oid` is different. The `oid` is the object ID of the App Registration (Service Principal) or your personal user, depending on which token you are inspecting.