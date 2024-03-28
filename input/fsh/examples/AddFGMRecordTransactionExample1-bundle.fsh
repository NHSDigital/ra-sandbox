Instance: AddFGMRecordTransactionExample1
InstanceOf: Bundle
Title: "FGM Example of adding a record with a Transaction"
Usage: #example
* type = #transaction
* entry[0].fullUrl = "Patient/PatientExample1"
* entry[=].resource = PatientExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/PatientExample1"
* entry[+].fullUrl = "Flag/FGMPatientFlagExample1"
* entry[=].resource = FGMPatientFlagExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/FGMPatientFlagExample1"

