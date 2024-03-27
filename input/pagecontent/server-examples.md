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

#### Postman

Some transaction and basic query examples are available in a [Postman collection](assets/postman/postman_collection.json).
