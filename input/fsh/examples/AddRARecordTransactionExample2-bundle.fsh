Instance: AddRARecordTransactionExample2
InstanceOf: Bundle
Title: "RA Example of idempotent update of a record with a Transaction"
Usage: #example
* type = #transaction
* entry[0].fullUrl = "Patient/PatientExample1"
* entry[=].resource = PatientExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/PatientExample1"
* entry[+].fullUrl = "Consent/RAConsentExample1"
* entry[=].resource = RAConsentExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Consent/RAConsentExample1"
* entry[+].fullUrl = "Condition/RAConditionExample1"
* entry[=].resource = RAConditionExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition/RAConditionExample1"
* entry[+].fullUrl = "Flag/RAPatientFlagExample1"
* entry[=].resource = RAPatientFlagExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/RAPatientFlagExample1"
* entry[+].fullUrl = "Flag/RAFlagExample1"
* entry[=].resource = RAFlagExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/RAFlagExample1"
* entry[+].fullUrl = "Condition/RAConditionExample2"
* entry[=].resource = RAConditionExample2
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition/RAConditionExample2"
* entry[+].fullUrl = "Flag/RAFlagExample2"
* entry[=].resource = RAFlagExample2
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/RAFlagExample2"
