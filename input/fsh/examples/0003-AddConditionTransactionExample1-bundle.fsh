Instance: AddConditionTransactionExample1
InstanceOf: Bundle
Usage: #example
* type = #transaction
* entry[0].fullUrl = "urn:uuid:6253c43b-5cc8-4645-93b1-38e41be82a77"
* entry[=].resource = PatientExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient?identifier=9912003888"
* entry[+].fullUrl = "urn:uuid:959fbc3c-0907-419e-aa3d-ab88f2d90c5e"
* entry[=].resource = ConsentExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Consent?patient=urn:uuid:6253c43b-5cc8-4645-93b1-38e41be82a77"
* entry[+].fullUrl = "urn:uuid:41a84a93-1c95-4162-b13c-1c617509e6e2"
* entry[=].resource = ConditionExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition?patient=urn:uuid:6253c43b-5cc8-4645-93b1-38e41be82a77"
* entry[+].fullUrl = "urn:uuid:fba99f70-fe1d-42e2-b77a-916e44b53c19"
* entry[=].resource = RAMasterFlagExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/fba99f70-fe1d-42e2-b77a-916e44b53c19"
* entry[+].fullUrl = "urn:uuid:04adcb5b-3de7-4f67-97f0-b2fdf941ba85"
* entry[=].resource = RAFlagExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/04adcb5b-3de7-4f67-97f0-b2fdf941ba85"
