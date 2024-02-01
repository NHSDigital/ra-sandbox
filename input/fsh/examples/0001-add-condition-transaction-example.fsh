Alias: $consentscope = http://terminology.hl7.org/CodeSystem/consentscope
Alias: $RARecord-FlagCategory-1 = https://fhir.nhs.uk/STU3/CodeSystem/RARecord-FlagCategory-1
Alias: $sct = https://snomed.info/sct
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $CareConnect-ConditionCategory-1 = https://fhir.hl7.org.uk/STU3/CodeSystem/CareConnect-ConditionCategory-1
Alias: $RARecord-ConditionCode-1 = https://fhir.nhs.uk/STU3/CodeSystem/RARecord-ConditionCode-1
Alias: $v3-DataOperation = http://terminology.hl7.org/CodeSystem/v3-DataOperation
Alias: $CareConnect-SDSJobRoleName-1 = https://fhir.hl7.org.uk/STU3/CodeSystem/CareConnect-SDSJobRoleName-1
Alias: $RARecord-AdjustmentCategory-1 = https://fhir.nhs.uk/STU3/CodeSystem/RARecord-AdjustmentCategory-1

Instance: 0001-add-condition-transaction-example
InstanceOf: Bundle
Usage: #example
* type = #transaction
* entry[0].fullUrl = "urn:uuid:6253c43b-5cc8-4645-93b1-38e41be82a77"
* entry[=].resource = patient-example-1
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient?identifier=9912003888"
* entry[+].fullUrl = "urn:uuid:959fbc3c-0907-419e-aa3d-ab88f2d90c5e"
* entry[=].resource = consent-example-1
* entry[=].request.method = #PUT
* entry[=].request.url = "Consent?patient=urn:uuid:6253c43b-5cc8-4645-93b1-38e41be82a77"
* entry[+].fullUrl = "urn:uuid:41a84a93-1c95-4162-b13c-1c617509e6e2"
* entry[=].resource = condition-example-1
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition?patient=urn:uuid:6253c43b-5cc8-4645-93b1-38e41be82a77"
* entry[+].fullUrl = "urn:uuid:fba99f70-fe1d-42e2-b77a-916e44b53c19"
* entry[=].resource = master-flag-example-1
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/fba99f70-fe1d-42e2-b77a-916e44b53c19"
* entry[+].fullUrl = "urn:uuid:04adcb5b-3de7-4f67-97f0-b2fdf941ba85"
* entry[=].resource = condition-flag-example-1
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/04adcb5b-3de7-4f67-97f0-b2fdf941ba85"

Instance: patient-example-1
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

Instance: consent-example-1
InstanceOf: Consent
Usage: #inline
* status = #active
* scope = $consentscope#patient-privacy
* category = $RARecord-FlagCategory-1#NRAF "National Reasonable Adjustments Flag"
* provision.purpose = $sct#370856009 "Limiting access to confidential patient information"
* patient = Reference(urn:uuid:6253c43b-5cc8-4645-93b1-38e41be82a77)
* policy.authority = "https://www.gov.uk/"
* policy.uri = "https://www.gov.uk/government/uploads/system/uploads/attachment_data/file/535024/data-security-review.pdf"

Instance: condition-example-1
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* category = $CareConnect-ConditionCategory-1#issue "Issue"
* code = $RARecord-ConditionCode-1#5 "Learning or understanding or concentrating"
* subject = Reference(urn:uuid:6253c43b-5cc8-4645-93b1-38e41be82a77)

Instance: master-flag-example-1
InstanceOf: Flag
Usage: #inline
* status = #active
* code = $RARecord-FlagCategory-1#NRAF "National Reasonable Adjustments Flag"
* category = $RARecord-FlagCategory-1#NRAF "National Reasonable Adjustments Flag"
* subject = Reference(urn:uuid:6253c43b-5cc8-4645-93b1-38e41be82a77)
* contained.resourceType = "Provenance"
* contained.id = "4c75ce1f-1ad7-4391-b5f6-104754c7e904"
* contained.target.reference = "#"
* contained.recorded = "2024-01-01T11:00:00+00:00"
* contained.activity = $v3-DataOperation#CREATE "create"
* contained.agent.role = $CareConnect-SDSJobRoleName-1#R0260 "General Medical Practitioner"
* contained.agent.who.reference = "https://sds.spineservices.nhs.uk/STU3/Practitioner/2ee4tr6a9"
* contained.agent.onBehalfOf.reference = "https://directory.spineservices.nhs.uk/STU3/Organization/a3e5i7"

Instance: condition-flag-example-1
InstanceOf: Flag
Usage: #inline
* status = #active
* code = $RARecord-AdjustmentCategory-1#001 "Communication support"
* category = $RARecord-FlagCategory-1#NRAF "National Reasonable Adjustments Flag"
* subject = Reference(urn:uuid:6253c43b-5cc8-4645-93b1-38e41be82a77)
* contained.resourceType = "Provenance"
* contained.id = "ddb4df1c-d15a-4d02-9346-c034732c5a37"
* contained.target.reference = "#"
* contained.recorded = "2024-01-01T11:00:00+00:00"
* contained.activity = $v3-DataOperation#CREATE "create"
* contained.agent.role = $CareConnect-SDSJobRoleName-1#R0260 "General Medical Practitioner"
* contained.agent.who.reference = "https://sds.spineservices.nhs.uk/STU3/Practitioner/2ee4tr6a9"
* contained.agent.onBehalfOf.reference = "https://directory.spineservices.nhs.uk/STU3/Organization/a3e5i7"