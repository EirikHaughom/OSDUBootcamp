# Module 2 - Configuring the OSDU platform
In this module you will learn how to configure the OSDU platform and preparing it for data ingestion.

This module will cover the following topics:
- **1. Entitlements Service**: User and Group management.
- **2. Reference Data**: Load reference data.
- **2. Legal Service**: Legal tags and data categorization management.
- **3. Schema Service**: Schema management.

## 1. Entitlements Service

Note: This will not include how to use the main service principal to give the first users access to the OSDU instance. If you are interested then you can view [here](../../Setup/entitlements-set-initial-admin.http).

Create a group, view the group, add a user, add group to another group and finally clean up by removing user and group membership. For this module we will utilize the OSDU CLI, but the same can be done through Postman calls.

### Create new group
First let us check which parameters we need for creating a group:

    osdu entitlements groups add -h

We need a group name and a description. For name just use your shortname (or some similar easy to remember name). For description be as creative as you want. The help text also reminds us that the name is \[required\], meaning description is optional.

    osdu entitlements groups add -g jmor -d "My fancy description"

### View your group

Now let us view the members of this group:

    osdu entitlements groups members -g jmor@eqninteroppoc-bootcamp.dataservices.energy

Note that here we need to full "email" of the group, meaning we need to post-fix it with @\<data-partition\>.\<domain\>. Also note that there is one member of this group already, namely yourself (or whatever identity you used to do the call...).

### Add new member to group

To add a member we first check what parameters we need:

    osdu entitlements members add -h

We need a member, a group to add to and optionally which role (OWNER or MEMBER). MEMBER being default if not set. In my example I will add Eirik Haughom by finding his Object ID in Equinors AAD (6e0ec822-3601-444d-a50a-96a1f0a07bf9)

    osdu entitlements members add -m 6e0ec822-3601-444d-a50a-96a1f0a07bf9 -g jmor@eqninteroppoc-bootcamp.dataservices.energy

We can verify he is there by calling

    osdu entitlements groups members -g jmor@eqninteroppoc-bootcamp.dataservices.energy

We did not use a role-assignment in our creation so he is automatically set as MEMBER.

### Add group to another group

Now let us assign our new group to one that already exists:

    osdu entitlements members add -m jmor@eqninteroppoc-bootcamp.dataservices.energy -g users.datalake.viewers@eqninteroppoc-bootcamp.dataservices.energy

You should get a 403-error. Why is that?

<details>
    <summary>Answer</summary>
    Your user is not owner on the group your are trying to assign to.
</details>

Let us try the other way around (I use another group to avoid circular reference):

    osdu entitlements members add -m users.datalake.admins@eqninteroppoc-bootcamp.dataservices.energy -g jmor@eqninteroppoc-bootcamp.dataservices.energy

This should work as you are trying to edit a group you are owner on.

### Clean up

Lets reverse the changes we have made:

    osdu entitlements members remove -m users.datalake.admins@eqninteroppoc-bootcamp.dataservices.energy -g jmor@eqninteroppoc-bootcamp.dataservices.energy

    osdu entitlements members add -m 6e0ec822-3601-444d-a50a-96a1f0a07bf9 -g jmor@eqninteroppoc-bootcamp.dataservices.energy

    osdu entitlements groups delete -g jmor@eqninteroppoc-bootcamp.dataservices.energy

Note you could have run only the last part as it would have removed the group from any other groups it was added to and it is not necessary to empty the group before deletion.

In the above samples we used a simple name. In a real instance remember to think about the three different "types" of groups **users**, **services** and **data**. As an easy rule-of-thumb try to avoid putting named users into anything other than **user**-groups. Also try to avoid pre-made groups for this, e.g. users.datalake.viewers. 

## 2. Reference Data

When a fresh OSDU instance has been created we would need to ingest reference data. We will not do this as a lab, but see [here](../../Setup/readme.md) for information how you could use the OSDU CLI to ingest all the OSDU-served reference data into your instance.

## 3. Legal Service

As mentioned legal tags are mandatory on all records. In this part we will create our own legal tag by modifying one of the supplied ones.

### Get one of the sample legal tags

Create a local copy of one of the supplied legal tags, e.g. [this one](../../Setup/legal-tags/bootcamp-private-default.json). Create it as a standard json-file on your local computer. Change some setting, e.g. the name of the tag to keep it simple.

### Verify existing tags in the instance

First let us list the existing tags in the instance:

    osdu legal listtags

If you would like to see the details of these tags you could specify the output to be json:

    osdu legal listtags -ojson

### Add your custom legal-tag

First let us see what parameters we need:

    osdu legal add -h

We need the path to the tag you created earlier:

    osdu legal add -p <your full/local path>

Lets verify it has been ingested:

    osdu legal listtags

Your tag should now be part of the list. Copy the whole name.

### Cleanup

Let us remove the tag again:

    osdu legal delete -n <name you copied in step above>

Verify it is gone from list

    osdu legal listtags

## 4. Schema Service

To ingest a new schema into OSDU you can manipulate the supplied sample-schema [here](./jmor-schema.json). The important part for testing creating new schema is to give the schema name, known as **kind** a new name so you can find it in OSDU. Search for

    x-osdu-schema-source

and change it to something you would find.

As usual we check what parameters we need:

    osdu schema add -h

We see most parameters are optional so lets try with

    osdu schema add -p <your path>

Now check it was ingested:

    osdu schema list

### Cleanup

Removing the schema is not possible using the cli as remove schema is not implemented. 

Stretch-goal would be to use Postman to remove the schema.


## Congratulations! You have now completed the module!
Continue with the next module: [Module 3 - Ingesting and reading data through Core APIs](../Module%203%20-%20Ingesting%20and%20reading%20data%20through%20Core%20APIs/readme.md)