Instance: AddCPISRecordTransactionExample1
InstanceOf: Bundle
Title: "CPIS Example of adding a record with a Transaction"
Usage: #example
* type = #transaction
* entry[0].fullUrl = "Patient/PatientExample1"
* entry[=].resource = PatientExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/PatientExample1"
* entry[+].fullUrl = "Consent/CPISConsentExample1"
* entry[=].resource = CPISConsentExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Consent/CPISConsentExample1"
* entry[+].fullUrl = "Condition/CPISConditionExample1"
* entry[=].resource = CPISConditionExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition/CPISConditionExample1"
* entry[+].fullUrl = "Flag/CPISPatientFlagExample1"
* entry[=].resource = CPISPatientFlagExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/CPISPatientFlagExample1"
* entry[+].fullUrl = "Flag/CPISFlagExample1"
* entry[=].resource = CPISFlagExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/CPISFlagExample1"
