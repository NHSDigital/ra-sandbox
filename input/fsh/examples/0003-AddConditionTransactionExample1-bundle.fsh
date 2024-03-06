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
* entry[=].resource = MasterFlagExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/fba99f70-fe1d-42e2-b77a-916e44b53c19"
* entry[+].fullUrl = "urn:uuid:04adcb5b-3de7-4f67-97f0-b2fdf941ba85"
* entry[=].resource = ConditionFlagExample1
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/04adcb5b-3de7-4f67-97f0-b2fdf941ba85"

Instance: PatientExample1
InstanceOf: Patient
Usage: #inline
* identifier.system = "https://fhir.nhs.uk/Id/nhs-number"
* identifier.value = "9912003888"
* active = true
* name.use = #official
* name.family = "Duck"
* name.given = "Donald"
* gender = #male
* birthDate = "1970-01-01"

Instance: ConditionExample1
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* category = RA-ConditionCategory#issue "Issue"
* code = RA-ConditionCode#5 "Learning or understanding or concentrating"
* subject = Reference(urn:uuid:6253c43b-5cc8-4645-93b1-38e41be82a77)

Instance: MasterFlagExample1
InstanceOf: Flag
Usage: #inline
* status = #active
* code = RA-FlagCategory#NRAF "National Reasonable Adjustments Flag"
* category = RA-FlagCategory#NRAF "National Reasonable Adjustments Flag"
* subject = Reference(urn:uuid:6253c43b-5cc8-4645-93b1-38e41be82a77)
* contained.resourceType = "Provenance"
* contained.id = "4c75ce1f-1ad7-4391-b5f6-104754c7e904"
* contained.target.reference = "#"
* contained.recorded = "2024-01-01T11:00:00+00:00"
* contained.activity = $v3-DataOperation#CREATE "create"
* contained.agent.role = $CareConnect-SDSJobRoleName-1#R0260 "General Medical Practitioner"
* contained.agent.who.reference = "https://sds.spineservices.nhs.uk/STU3/Practitioner/2ee4tr6a9"
* contained.agent.onBehalfOf.reference = "https://directory.spineservices.nhs.uk/STU3/Organization/a3e5i7"

Instance: ConditionFlagExample1
InstanceOf: Flag
Usage: #inline
* status = #active
* code = $sct#1082691000000101 "Requires support for expressive communication needs"
* category = RA-FlagCategory#NRAF "National Reasonable Adjustments Flag"
* subject = Reference(urn:uuid:6253c43b-5cc8-4645-93b1-38e41be82a77)
* contained.resourceType = "Provenance"
* contained.id = "ddb4df1c-d15a-4d02-9346-c034732c5a37"
* contained.target.reference = "#"
* contained.recorded = "2024-01-01T11:00:00+00:00"
* contained.activity = $v3-DataOperation#CREATE "create"
* contained.agent.role = $CareConnect-SDSJobRoleName-1#R0260 "General Medical Practitioner"
* contained.agent.who.reference = "https://sds.spineservices.nhs.uk/STU3/Practitioner/2ee4tr6a9"
* contained.agent.onBehalfOf.reference = "https://directory.spineservices.nhs.uk/STU3/Organization/a3e5i7"