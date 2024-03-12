Instance: AddCPISRecordTransactionExample1
InstanceOf: Bundle
Title: "CPIS Example of adding a record with a Transaction"
Usage: #example
* type = #transaction
* entry[0].fullUrl = "urn:uuid:f7898b1c-4314-4331-9477-cca32861e858"
* entry[=].resource = PatientExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient?identifier=9912003888"
* entry[+].fullUrl = "urn:uuid:921cd5d5-e1e9-4986-bf8e-5826832db2ff"
* entry[=].resource = CPISConsentExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Consent?patient=urn:uuid:f7898b1c-4314-4331-9477-cca32861e858"
* entry[+].fullUrl = "urn:uuid:7dd8fe1e-e782-42c6-9ef4-1bebce3a43cc"
* entry[=].resource = CPISConditionExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition?patient=urn:uuid:f7898b1c-4314-4331-9477-cca32861e858"
* entry[+].fullUrl = "urn:uuid:066fbb4b-2a8d-471e-8732-42e85ab1de1a"
* entry[=].resource = CPISPatientFlagExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/066fbb4b-2a8d-471e-8732-42e85ab1de1a"
* entry[+].fullUrl = "urn:uuid:621c9e76-19e1-4aa0-adb0-8d79979ea27c"
* entry[=].resource = CPISFlagExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/066fbb4b-2a8d-471e-8732-42e85ab1de1a"
