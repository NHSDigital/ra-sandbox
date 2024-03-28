Instance: CPISFlagExample1
InstanceOf: Flag
Title: "CPIS example of a Flag resource"
Usage: #example
* meta.profile = "https://fhir.nhs.uk/England/StructureDefinition/ProgrammeFlag"

* extension[0].url = "https://fhir.nhs.uk/England/StructureDefinition/Extension-FlagNotes"
* extension[=].valueAnnotation.text = "Example of flag notes extension text in adjustment flag"

* status = #active
* category[0] = PatientFlagCategory#CP-IS "Child Protection - Information Sharing Flag"
* category[+] = CPIS-FlagCategory#001 "Example CPIS category"
* code = $sct#224353004 "Child protection finding (finding)"
* subject = Reference(Patient/PatientExample1)

* contained.resourceType = "Provenance"
* contained.id = "ea77b434-585a-48b9-a789-eac610f0363e"
* contained.target.reference = "#"
* contained.recorded = "2024-01-01T11:00:00+00:00"
* contained.activity = $v3-DataOperation#CREATE "create"
* contained.agent.role = $CareConnect-SDSJobRoleName-1#R0260 "General Medical Practitioner"
* contained.agent.who.reference = "https://sds.spineservices.nhs.uk/STU3/Practitioner/2ee4tr6a9"
* contained.agent.onBehalfOf.reference = "https://directory.spineservices.nhs.uk/STU3/Organization/a3e5i7"