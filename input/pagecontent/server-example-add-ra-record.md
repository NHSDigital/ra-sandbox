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

The examples here describe the API options related to the workflow given in the use case [Add RA Record](add-ra-record.html#workflow).  

#### Example 1

TODO

#### Example 2

The first [example transaction](Bundle-0001-add-condition-transaction-example.html) adds an RA record consisting of a Consent resource from the patient, a master Flag resource (is this really needed?), a Condition resource and an associated condition Flag resource using a transaction Bundle, which provides atomicity as well as more network efficent call.  Each Flag resource has a Provenance resource embedded in it.  (TODO maybe a futher discussion section somewhere on options for provenance, i.e. linking to versions, _history and transaction considerations, options to use etag or X-provenance).  

The second [example transaction](Bundle-0002-add-condition-transaction-example.html) simply modifies the first transaction by adding additional resources for another Condition and adjustment (Flag).  The transactions are using PUT's and as FHIR does defined (upsert)[https://hl7.org/fhir/http.html#upsert] as an option, and the HAPI Starter Server has implemented this, this example has been constructed to demostrate this.  

Details of querying the resulting data from these transaction is given in the [Retrieve RA Record](server-example-add-ra-record.html) server example.  