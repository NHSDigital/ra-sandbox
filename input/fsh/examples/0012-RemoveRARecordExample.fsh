Instance: RemoveRARecordExample
InstanceOf: Bundle
Title: "RA Example of deleting an RA record with a Transaction"
Usage: #example
* type = #transaction
* entry[0].request.method = #DELETE
* entry[=].request.url = "Flag/fba99f70-fe1d-42e2-b77a-916e44b53c19"
* entry[+].request.method = #DELETE
* entry[=].request.url = "Consent/RAConsentExample1"
* entry[+].request.method = #DELETE
* entry[=].request.url = "Condition/RAConditionExample1"
