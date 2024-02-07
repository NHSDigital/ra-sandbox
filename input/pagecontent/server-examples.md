### Summary

The [HAPI FHIR Starter Server](https://github.com/hapifhir/hapi-fhir-jpaserver-starter) is used to demostrate some basic REST capabilities in FHIR using examples within this implementation guide.

#### Docker invocation of the HAPI Starter Project

This command starts the server on port 8080 and use UUID (as opposed to sequential numbers) for resource ID's.

```
docker run -p 8080:8080 -e hapi.fhir.daoconfig_client_id_strategy=UUID -e hapi.fhir.client_id_strategy=ANY hapiproject/hapi:latest
```

To pull the latest image, run

```
docker pull hapiproject/hapi:latest
```

#### Swagger

The HAPI starter project provides an OAS interface to the supported FHIR API.  Assuming the above docker command is used, this would be available at

```
http://localhost:8080/fhir/swagger-ui/index.html
```

#### CI Build

These examples are loaded into a running FHIR server during the IG build.  Some resources (queries) are dynamically generated and added to the IG at build time.  (TODO add a list of dynamically generated resources somewhere).

#### Postman

All examples are available in a [Postman collection](assets/postman/postman_collection.json).

### Examples

The examples here describe the API options related to the workflow given in the use case [Add RA Record](add-ra-record.html).

See the [Data Model](data-model.html) for details on the relationships between the resources.  

#### Add RA Record

This section provides examples for those given in the use case [Add RA Record](add-ra-record.html).

##### Example 1

TODO

##### Example 2

<<<<<<< HEAD
The first example [Bundle transaction](Bundle-AddConditionTransactionExample1.html) adds an RA record consisting of 
=======
The first example [Bundle transaction](Bundle-0001-add-condition-transaction-example.html) adds an RA record consisting of 
>>>>>>> ed1f9cf6d55d845bc0b9520199f79d6cd37838a1
* a Patient resource
* a Consent resource 
* a (master) Flag resource (<span style="background-color: #FFFF00">is this really needed?</span>) 
* a Condition resource (associated with the following Flag)
* a Flag resource (associated with the Condition)
These resources are contained in a transaction Bundle, which provides atomicity as well as a more network efficent call.  

Each Flag resource (<span style="background-color: #FFFF00">TODO embed in all or make separate</>)has a Provenance resource embedded in it.  (<span style="background-color: #FFFF00">TODO maybe a futher discussion section somewhere on options for provenance, i.e. linking to versions, _history and transaction considerations, options to use etag or X-provenance</span>).  

<<<<<<< HEAD
Another example [Bundle transaction](Bundle-AddConditionTransactionExample2.html) modifies the first transaction by adding additional resources for another Condition and adjustment (Flag).  
=======
Another example [Bundle transaction](Bundle-0002-add-condition-transaction-example.html) modifies the first transaction by adding additional resources for another Condition and adjustment (Flag).  
>>>>>>> ed1f9cf6d55d845bc0b9520199f79d6cd37838a1

The transactions are using PUT's to provide (upsert)[https://hl7.org/fhir/http.html#upsert] functionality.  The HAPI Starter Server (provided via docker) supports this part of the specification.

#### Retrieve RA Record

This section provides examples for those given in the use case [Retrieve RA Record](retrieve-ra-record.html).

##### Example 1

For each transaction example provided in the previous section, the following query will performed (dynamically during the IG build)  

```
<base>/Patient?identifier=9912003888&_revinclude=Consent:patient&_revinclude=Flag:patient&_revinclude=Condition:patient  
```

This query will return the Patient resource using the patients NHS number (<span style="background-color: #FFFF00">TODO will be profiled to check for this, reference this later</span>).  The assocaited resources that make up the RA are also returned, such as  
* Consent resources (<span style="background-color: #FFFF00">maybe link to profiles here</span>)  
* Flag resources  
* Condition resources  
which are all returned using default Patient SearchParameters (defined in the base specification).   

First Bundle example:  

* [Bundle transaction](Bundle-AddConditionTransactionExample1.html)  
* [Query output](Bundle-QUERY-OUTPUT--0005-add-condition-transaction-example.html)  

Second Bundle example:  

* [Bundle transaction](Bundle-AddConditionTransactionExample2.html)  
* [Query output](Bundle-QUERY-OUTPUT--0006-add-condition-transaction-example.html)  

#### Remove RA Record

This section provides examples for those given in the use case [Remove RA Record](todo.html).

##### Example 1

TODO (@vickyjaiswal0308)

### Other Query Examples

These queries are ran after all other write (Create, Update) examples and corresponding queries have been ran.

#### Read all Flags

Query:
```
GET <base>/Flag
```

* [Query output](Bundle-QUERY-OUTPUT--0008-get-all-flags.html)

#### Get Flag by Category

**Note:** this requires a [custom SearchParameter](SearchParameter-FlagCategory.html)

Query:
```
GET <base>/Flag?category=NRAF  
```

* [Query output](Bundle-QUERY-OUTPUT--0009-get-flag-by-category.html)  

#### Get Flag by Category and Code

**Note:** this requires a [custom SearchParameter](SearchParameter-FlagCode.html)

Query:  
```  
GET <base>/Flag?category=NRAF&code=001  
```  

* [Query output](Bundle-QUERY-OUTPUT--0010-get-flag-by-category-and-code.html)  

#### Get Flag by Category and Code and supporting resources

**Note:** this requires [an extension] to link to the supporting resources and a [custom SearchParameter](todo.html) to allow for the use of [_include parameters](https://www.hl7.org/fhir/search.html#include)

* [Query output](todo.html)

#### Delete Flag by ID

Query:
```
GET <base>/Flag/04adcb5b-3de7-4f67-97f0-b2fdf941ba85
```

* [Query output](OperationOutcome-QUERY-OUTPUT--0011-delete-flag-by-id.html)

#### POST to /Resource 

TODO

#### Delete supporting resource

<span style="background-color: #FFFF00">will be covered by remove RA record</span>

#### Delete a resource using it's ID

<span style="background-color: #FFFF00">This seems to be covered in section 'Delete Flag by ID'?</span>