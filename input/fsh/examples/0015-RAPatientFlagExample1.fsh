Instance: RAPatientFlagExample1
InstanceOf: Flag
Title: "RA example of a patient Flag resource."
Usage: #example
* meta.profile = "https://fhir.nhs.uk/England/StructureDefinition/PatientFlag"

* extension[0].url = "https://fhir.nhs.uk/England/StructureDefinition/Extension-FlagNotes"
* extension[=].valueAnnotation.text = "Example of flag notes extension text in patient flag"

* status = #active
* code = PatientFlagCategory#NRAF "National Reasonable Adjustments Flag"
* subject = Reference(Patient/PatientExample1)

* contained.resourceType = "Provenance"
* contained.id = "c4e2e862-3bf4-4176-a186-9f1732938260"
* contained.target.reference = "#"
* contained.recorded = "2024-01-01T11:00:00+00:00"
* contained.activity = $v3-DataOperation#CREATE "create"
* contained.agent.role = $CareConnect-SDSJobRoleName-1#R0260 "General Medical Practitioner"
* contained.agent.who.reference = "https://sds.spineservices.nhs.uk/STU3/Practitioner/2ee4tr6a9"
* contained.agent.onBehalfOf.reference = "https://directory.spineservices.nhs.uk/STU3/Organization/a3e5i7"