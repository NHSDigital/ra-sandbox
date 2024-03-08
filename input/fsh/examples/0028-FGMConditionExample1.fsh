Instance: FGMConditionExample1
InstanceOf: Condition
Title: "FGM example of a Condition resource."
Usage: #example
* meta.profile = "https://fhir.nhs.uk/England/StructureDefinition/FlagCondition"

* clinicalStatus = $condition-clinical#active
* category[0] = PatientFlagCategory#FGM "Female Genital Mutilation Flag"
* category[+] = FGM-ConditionCategory#fgm-example-condition-category "FGM example condition category"
* code = FGM-ConditionCode#1 "FGM example condition code"
* subject = Reference(Patient/PatientExample1)

* contained.resourceType = "Provenance"
* contained.id = "e78b78b2-31f9-453d-b278-6d5720001073"
* contained.target.reference = "#"
* contained.recorded = "2024-01-01T11:00:00+00:00"
* contained.activity = $v3-DataOperation#CREATE "create"
* contained.agent.role = $CareConnect-SDSJobRoleName-1#R0260 "General Medical Practitioner"
* contained.agent.who.reference = "https://sds.spineservices.nhs.uk/STU3/Practitioner/2ee4tr6a9"
* contained.agent.onBehalfOf.reference = "https://directory.spineservices.nhs.uk/STU3/Organization/a3e5i7"