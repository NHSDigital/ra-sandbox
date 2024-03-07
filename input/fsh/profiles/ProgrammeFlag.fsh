Profile: ProgrammeFlag
Parent: Flag
Id: ProgrammeFlag
Title: "NHS England Programme Flag Profile"
Description: "Record an individual flag for an NHS England programme."

* ^name = "ProgrammeFlag"
* ^url = "https://fhir.nhs.uk/England/StructureDefinition/ProgrammeFlag"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2024-02-14"

* insert NHSEngland-PublisherContactCopyright

* extension contains
    Extension-FlagNotes named flagNotes 0..1 

* extension[flagNotes].value[x] only Annotation
* extension[flagNotes].valueAnnotation 1..

* category ^slicing.discriminator.type = #type
* category ^slicing.rules = #open
* category ^slicing.discriminator.path = "system"

* category contains patientFlag 1.. MS
* category[patientFlag] from $ValueSetPatientFlagCategory (required)

* category contains programmeFlag 1.. MS
* category[programmeFlag] from $ValueSetProgrammeFlagCategory (required)

* code MS
* code from $ValueSetProgrammeFlagCode (extensible)
