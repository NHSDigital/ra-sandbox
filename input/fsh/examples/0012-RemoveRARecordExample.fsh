Instance: RemoveRARecordExample
InstanceOf: Bundle
Title: "RA Example of deleting an RA record with a Transaction"
Usage: #example
* type = #transaction
* entry[0].request.method = #DELETE
* entry[=].request.url = "Flag/RAFlagExample1"
* entry[+].request.method = #DELETE
* entry[=].request.url = "Flag/RAPatientFlagExample1"
* entry[+].request.method = #DELETE
* entry[=].request.url = "Consent/RAConsentExample1"
* entry[+].request.method = #DELETE
* entry[=].request.url = "Condition/RAConditionExample1"
