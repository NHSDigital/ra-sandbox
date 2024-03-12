Instance: FGMFlagExample1
InstanceOf: Flag
Title: "FGM example of a Flag resource"
Usage: #example
* meta.profile = "https://fhir.nhs.uk/England/StructureDefinition/ProgrammeFlag"

* extension[0].url = "https://fhir.nhs.uk/England/StructureDefinition/Extension-FlagNotes"
* extension[=].valueAnnotation.text = "Example of flag notes extension text in adjustment flag"

* status = #active
* category[0] = PatientFlagCategory#FGM "Female Genital Mutilation Flag"
* category[+] = FGM-FlagCategory#001 "Example FGM category"
* code = $sct#902961000000107 "Family history of female genital mutilation (situation)"
* subject = Reference(Patient/PatientExample1)

* contained.resourceType = "Provenance"
* contained.id = "9b5f2d1b-8175-407f-a49d-b4f04c9d4300"
* contained.target.reference = "#"
* contained.recorded = "2024-01-01T11:00:00+00:00"
* contained.activity = $v3-DataOperation#CREATE "create"
* contained.agent.role = $CareConnect-SDSJobRoleName-1#R0260 "General Medical Practitioner"
* contained.agent.who.reference = "https://sds.spineservices.nhs.uk/STU3/Practitioner/2ee4tr6a9"
* contained.agent.onBehalfOf.reference = "https://directory.spineservices.nhs.uk/STU3/Organization/a3e5i7"