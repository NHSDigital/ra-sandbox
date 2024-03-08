Instance: FGMPatientFlagExample1
InstanceOf: Flag
Title: "FGM example of a patient Flag resource"
Usage: #example
* meta.profile = "https://fhir.nhs.uk/England/StructureDefinition/PatientFlag"

* extension[0].url = "https://fhir.nhs.uk/England/StructureDefinition/Extension-FlagNotes"
* extension[=].valueAnnotation.text = "Example of flag notes extension text in patient flag"

* status = #active
* code = PatientFlagCategory#FGM "Female Genital Mutilation Flag"
* subject = Reference(Patient/PatientExample1)

* contained.resourceType = "Provenance"
* contained.id = "3fc83fd8-4a6d-48e4-91ab-12bb10a4a834"
* contained.target.reference = "#"
* contained.recorded = "2024-01-01T11:00:00+00:00"
* contained.activity = $v3-DataOperation#CREATE "create"
* contained.agent.role = $CareConnect-SDSJobRoleName-1#R0260 "General Medical Practitioner"
* contained.agent.who.reference = "https://sds.spineservices.nhs.uk/STU3/Practitioner/2ee4tr6a9"
* contained.agent.onBehalfOf.reference = "https://directory.spineservices.nhs.uk/STU3/Organization/a3e5i7"