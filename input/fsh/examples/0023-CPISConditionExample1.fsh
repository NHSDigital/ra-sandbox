Instance: CPISConditionExample1
InstanceOf: Condition
Title: "CPIS example of a Condition resource."
Usage: #example
* meta.profile = "https://fhir.nhs.uk/England/StructureDefinition/FlagCondition"

* clinicalStatus = $condition-clinical#active
* category[0] = PatientFlagCategory#CP-IS "Child Protection - Information Sharing Flag"
* category[+] = CPIS-ConditionCategory#cpis-example-condition-category "CPIS example condition category"
* code = CPIS-ConditionCode#1 "CPIS example condition code"
* subject = Reference(Patient/PatientExample1)

* contained.resourceType = "Provenance"
* contained.id = "482155c0-9ed3-4b22-b7b8-009f265606cc"
* contained.target.reference = "#"
* contained.recorded = "2024-01-01T11:00:00+00:00"
* contained.activity = $v3-DataOperation#CREATE "create"
* contained.agent.role = $CareConnect-SDSJobRoleName-1#R0260 "General Medical Practitioner"
* contained.agent.who.reference = "https://sds.spineservices.nhs.uk/STU3/Practitioner/2ee4tr6a9"
* contained.agent.onBehalfOf.reference = "https://directory.spineservices.nhs.uk/STU3/Organization/a3e5i7"