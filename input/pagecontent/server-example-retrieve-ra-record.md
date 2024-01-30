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

### Examples

The examples here describe search options for the workflow given in [Retrieve RA Record](todo.html).  This follows on from the data entered in the workflow given in the use case [Add RA Record](add-ra-record.html#workflow).  

#### Example 1

Based on the example transaction Bundles given in the use case [Add RA Record](add-ra-record.html#workflow), for each transaction, the following query will performed (dynamically during the IG build)  

```
<base>/Patient?identifier=9912003888&_revinclude=Consent:patient&_revinclude=Flag:patient&_revinclude=Condition:patient  
```

This query will return the Patient resource using the patients NHS number (TODO will be profiled to check for this, reference this later).  The assocaited resources that make up the RA are also returned, which are all using default Patient SearchParameters define in the base specification for each resource.   

For the [first transaction example](Bundle-add-condition-transaction-example-1.html), this is the [output of the query](Bundle-QUERY-OUTPUT--add-condition-transaction-example-1.html).  

For the [second transaction example](Bundle-add-condition-transaction-example-2.html), where a Condition and adjustment (Flag) is added, this is the [output of the query](Bundle-QUERY-OUTPUT--add-condition-transaction-example-2.html).  

See the [Data Model](data-model.html) for details on the relationships between the resources.  

#### Example #

TODO?  