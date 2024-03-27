Instance: AddFGMRecordTransactionExample1
InstanceOf: Bundle
Title: "FGM Example of adding a record with a Transaction"
Usage: #example
* type = #transaction
* entry[0].fullUrl = "Patient/PatientExample1"
* entry[=].resource = PatientExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/PatientExample1"
* entry[+].fullUrl = "Consent/FGMConsentExample1"
* entry[=].resource = FGMConsentExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Consent/FGMConsentExample1"
* entry[+].fullUrl = "Condition/FGMConditionExample1"
* entry[=].resource = FGMConditionExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition/FGMConditionExample1"
* entry[+].fullUrl = "Flag/FGMPatientFlagExample1"
* entry[=].resource = FGMPatientFlagExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/FGMPatientFlagExample1"
* entry[+].fullUrl = "Flag/FGMFlagExample1"
* entry[=].resource = FGMFlagExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/FGMFlagExample1"
