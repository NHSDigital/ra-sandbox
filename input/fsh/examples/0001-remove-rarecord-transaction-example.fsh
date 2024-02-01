Instance: 0001-remove-rarecord-transaction-example
InstanceOf: Bundle
Usage: #example
* type = #transaction
* entry[0].request.method = #DELETE
* entry[=].request.url = "http://localhost:8080/fhir/Flag/fba99f70-fe1d-42e2-b77a-916e44b53c19"
* entry[+].request.method = #DELETE
* entry[=].request.url = "http://localhost:8080/fhir/Flag/04adcb5b-3de7-4f67-97f0-b2fdf941ba85"
* entry[+].request.method = #DELETE
* entry[=].request.url = "http://localhost:8080/fhir/Consent/consent-example-1"
* entry[+].request.method = #DELETE
* entry[=].request.url = "http://localhost:8080/fhir/Condition/condition-example-1"
