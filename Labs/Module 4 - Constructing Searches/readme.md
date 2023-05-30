# Module 4 - Constructing Searches

In this module you will learn how to use the OSDU API to search for data in the OSDU platform using the **Search Service**.

## Objectives
- Learn how to construct basic searches to retrieve data from the OSDU platform.

## 4.1 Search API
This module uses the following API from the Postman Collection: `Search > (POST) search`, or API endpoint `/api/search/v2/query`. 

### 4.1.1 Search by kind
The below example shows how to search for all records of a specific kind. In this case, we are searching for all records of kind `osdu:wks:master-data--Wellbore:1.0.0`.

```json
{
  "kind": "osdu:wks:master-data--Wellbore:1.0.0"
}
```

### 4.1.2 Limiting the number of results
By default the search API limits results at 10 records unless otherwise specified, up to a maximum of 1000. The below example shows how to limit the number of results to 100.

```json
{
  "kind": "osdu:wks:master-data--Wellbore:1.0.0",
  "limit": 100
}
```

Note that the output will include a `"totalCount"` property displaying the total number of records matching the search criteria. If the number of records matching the search criteria exceeds a limit of 10000, the `"totalCount"` property will be set to the limit value.

### 4.1.3 Search by multiple kinds
The below example shows how to search for all records of multiple kinds. In this case, we are searching for all records of kind `osdu:wks:master-data--Wellbore:1.0.0` and `osdu:wks:master-data--Well:1.0.0`.

```json
{
  "kind": [
    "osdu:wks:master-data--Wellbore:1.0.0",
    "osdu:wks:master-data--Well:1.0.0"
  ]
}
```

### 4.1.4 Search by specific record ID
The below example shows how to search for a specific record by its ID. In this case, we are searching for the record with ID `contoso-opendes:master-data--Well:7018`.

```json
{
  "kind": "*:*:*:*",
  "query": "id:\"consoso-opendes:master-data--Well:7018\""
}
```

### 4.1.5 Limiting returned content
While it is often useful to return all fields in a record, sometimes it is useful to limit the fields returned. The below example shows how to construct a query to search any record of any kind, but only return the `id`, `kind` and `data.FacilityName` fields.

```json
{
  "kind": "*:*:*:*",
  "query": "*",
  "limit": 10,
  "returnedFields": [ 
    "id", 
    "kind",
    "data.FacilityName"
    ]
}
```

### 4.1.6 Constructing a query
The below example shows how to construct a query to search for all records of any kind which has a `FacilityName` property that contains the word, or parts of word, `D12-01` under the data section.

```json
{
  "kind": "*:*:*:*",
  "query": "data.FacilityName:D12-01"
}
```

### 4.1.7 Exact matches
The above example searches for **contains** the word `D12-01`. To search for an **exact match** of the word `D12-01`, use the following query:

```json
{
  "kind": "*:*:*:*",
  "query": "data.FacilityName:\"D12-01\""
}
```

### 4.1.8 Exact matches ONLY
The above example searches for **exact match** of the word `D12-01`. To search for ONLY the **exact match** of the word `D12-01`, use the following query:

```json
{
  "kind": "*:*:*:*",
  "query": "data.FacilityName.keyword:\"D12-01\""
}
```
Note the use of the ```.keyword```. This tells us to only return ```"D12-01"``` and NOT ```"D12-01 Y"```. 

To understand the structure, expand the example record below and validate the data property (FacilityName) and it's value:
<details>
  <summary>Example record</summary>
  
```json
{
    "results": [
        {
            "data": {
                "FacilityStates": [
                    {
                        "FacilityStateTypeID": "contoso-opendes:reference-data--FacilityStateType:Abandoned:"
                    }
                ],
                "DefaultVerticalMeasurementID": "RotaryTable",
                "SpatialLocation.Wgs84Coordinates": {
                    "geometries": [
                        {
                            "coordinates": [
                                2.83166462,
                                54.42818308
                            ],
                            "type": "point"
                        }
                    ],
                    "type": "geometrycollection"
                },
                "Source": "TNO",
                "FacilityName": "D12-01",
                "FacilityOperators": [
                    {
                        "FacilityOperatorID": null,
                        "FacilityOperatorOrganisationID": "contoso-opendes:master-data--Organisation:Pennzoil:"
                    }
                ],
                "NameAliases": [
                    {
                        "AliasName": "D12-01",
                        "AliasNameTypeID": "platform2280-jabeland:reference-data--AliasNameType:Well:",
                        "DefinitionOrganisationID": null
                    },
                    {
                        "AliasName": "7018",
                        "AliasNameTypeID": "platform2280-jabeland:reference-data--AliasNameType:UWI:",
                        "DefinitionOrganisationID": null
                    }
                ],
            },
            "kind": "osdu:wks:master-data--Well:1.0.0",
            "source": "wks",
            "acl": {
                "viewers": [
                    "data.default.viewers@contoso-opendes.dataservices.energy"
                ],
                "owners": [
                    "data.default.owners@contoso-opendes.dataservices.energy"
                ]
            },
            "type": "master-data--Well",
            "version": 1678351228041891,
            "tags": null,
            "createTime": "2023-03-09T08:40:28.047Z",
            "authority": "osdu",
            "namespace": "osdu:wks",
            "legal": {
                "legaltags": [
                    "contoso-opendes-open-test-data"
                ],
                "otherRelevantDataCountries": [
                    "US"
                ],
                "status": "compliant"
            },
            "createUser": "a9b01ec8-23d6-41c6-8773-aaaaaaaaaaaa",
            "id": "contoso-opendes:master-data--Well:7018"
        }
    ]
}
```
  
</details>
<br>

Using the same structure, construct a search for the kind `osdu:wks:master-data--Wellbore:1.0.0` listing 50 records which has the property `DefaultVerticalMeasurementID` set to `RotaryTable`, and note the total number of records matching the search criteria.

<details>
  <summary>Solution</summary>

```json
{
  "kind": "osdu:wks:master-data--Wellbore:1.0.0",
  "query": "data.DefaultVerticalMeasurementID:\"RotaryTable\"",
  "limit": "50"
}
```
  
</details>

### 4.1.8 AND operator
The below example shows how to construct a query to search for all records of kind `osdu:wks:master-data--Wellbore:1.0.0` that has a `FacilityName` property that contains the word `D12-01` under the data section, and has a `DefaultVerticalMeasurementID` property that contains the word `RotaryTable` under the data section.

```json
{
  "kind": "*:*:*:*",
  "query": "data.FacilityName:\"D12-01\" AND data.DefaultVerticalMeasurementID:RotaryTable"
}
```

### 4.1.9 OR operator
The below example shows how to construct a query to search for all records of kind `osdu:wks:master-data--Wellbore:1.0.0` that has a `FacilityName` property that contains the word `D12-01` or `D12-02`.

```json
{
  "kind": "*:*:*:*",
  "query": "data.FacilityName:\"D12-01\" OR data.FacilityName:\"D12-07\"",
  "returnedFields": [ "id" ]
}
```

This should return 2 records, one for each facility name.

### 4.1.10 Aggregations
The below example shows how to construct a search to retrieve the top 10 most frequent values for the property `FacilityName` under the data section.

```json
{
  "kind": "*:*:*:*",
  "limit": "1",
  "aggregateBy": "kind"
}
```

Observing the results, you will see that below the record information you will see the `aggregations` containing all `kinds` on the ADME data partition with a list of total records registered for each kind.

Example output:

```json
"aggregations": [
        {
            "key": "osdu:wks:dataset--File.Generic:1.0.0",
            "count": 38358
        },
        {
            "key": "osdu:wks:work-product--WorkProduct:1.0.0",
            "count": 12760
        },
        {
            "key": "osdu:wks:master-data--Wellbore:1.0.0",
            "count": 6484
        },
        {
            "key": "osdu:wks:work-product-component--WellboreTrajectory:1.0.0",
            "count": 5943
        },
        {
            "key": "osdu:wks:work-product-component--WellboreMarkerSet:1.0.0",
            "count": 5879
        },
        {
            "key": "osdu:wks:master-data--Well:1.0.0",
            "count": 4947
        },
        {
            "key": "osdu:wks:work-product-component--WellLog:1.0.0",
            "count": 929
        },
        {
            "key": "osdu:wks:master-data--Field:1.0.0",
            "count": 422
        },
        {
            "key": "osdu:wks:master-data--GeoPoliticalEntity:1.0.0",
            "count": 406
        },
        {
            "key": "osdu:wks:master-data--Organisation:1.0.0",
            "count": 213
        },
        {
            "key": "osdu:wks:work-product-component--Document:1.0.0",
            "count": 27
        },
        {
            "key": "osdu:wks:reference-data--DrillingReasonType:1.0.0",
            "count": 16
        },
        {
            "key": "osdu:wks:reference-data--MaterialType:1.0.0",
            "count": 15
        },
        {
            "key": "osdu:wks:reference-data--FacilityStateType:1.0.0",
            "count": 10
        },
        {
            "key": "osdu:wks:reference-data--VerticalMeasurementType:1.0.0",
            "count": 10
        },
        {
            "key": "osdu:wks:reference-data--UnitOfMeasure:1.0.0",
            "count": 9
        },
        {
            "key": "osdu:wks:reference-data--CoordinateReferenceSystem:1.0.0",
            "count": 8
        },
        {
            "key": "osdu:wks:reference-data--GeoPoliticalEntityType:1.0.0",
            "count": 6
        },
        {
            "key": "osdu:wks:reference-data--AliasNameType:1.0.0",
            "count": 5
        },
        {
            "key": "osdu:wks:reference-data--VerticalMeasurementPath:1.0.0",
            "count": 5
        },
        {
            "key": "osdu:wks:reference-data--FacilityEventType:1.0.0",
            "count": 3
        },
        {
            "key": "osdu:wks:reference-data--SchemaFormatType:1.0.0",
            "count": 3
        },
        {
            "key": "osdu:wks:reference-data--WellboreTrajectoryType:1.0.0",
            "count": 3
        },
        {
            "key": "osdu:wks:reference-data--FacilityType:1.0.0",
            "count": 2
        },
        {
            "key": "osdu:wks:reference-data--OperatingEnvironment:1.0.0",
            "count": 2
        },
        {
            "key": "osdu:wks:reference-data--ResourceSecurityClassification:1.0.0",
            "count": 1
        }
    ],
```

## 4.2 Cursor Search API
With the regular search API, you can only retrieve a maximum of 1000 records at a time. If you want to retrieve more records, you can use the cursor search API. The cursor search API is similar to the regular search API, but it returns a cursor that you can use to retrieve the next batch of records. The cursor search API is useful when you want to retrieve a large number of records.

### Request
This module uses the following API from the Postman Collection: `Search > (POST) cursor search` with API endpoint `/api/search/v2/query/cursor`. The request body is the same as the regular search API.

We will list out all records of kind `osdu:wks:master-data--Wellbore:1.0.0` with a limit of 1000 records per request.

```json
{
  "kind": "osdu:wks:master-data--Wellbore:1.0.0",
  "limit": 1000
}
```

### Response
The response body contains the cursor and the first batch of records. The cursor is a string that you can use to retrieve the next batch of records. The cursor is valid for 1 minute. If you don't use the cursor within 1 minute, it will expire and you will need to make another request to get a new cursor.

Note that the response body is the same as the regular search API, except that it contains a `cursor` property:
```json
"cursor": "7A9D26B323037DC91FF1CACBDB408E45",
```

### Following Requests
To retrieve the next batch of records, you need to make another request to the cursor search API with the cursor that you got from the previous request. The cursor search API is similar to the regular search API, but it has an additional `cursor` property in the request body.

```json
{
  "kind": "osdu:wks:master-data--Wellbore:1.0.0",
  "limit": 1000,
  "cursor": "7A9D26B323037DC91FF1CACBDB408E45"
}
```

For each request you send with this cursor, you will get the next batch of records. You can keep sending requests until you get an empty response, which means that you have reached the end of the records.