Profile: PatientFlag
Parent: Flag
Id: PatientFlag
Title: "NHSE Patient Flag Profile"
Description: "Record whether a Patient Flags exists"

* ^name = "PatientFlag"
* ^url = "https://fhir.nhs.uk/England/StructureDefinition/PatientFlag"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2024-02-14"

* insert NHSEngland-Copyright

* extension contains
    Extension-FlagNotes named flagNotes 0..1 and
    $ExtensionFlagDetail named flagDetail 0..*

* extension[flagNotes].value[x] only Annotation
* extension[flagNotes].valueAnnotation 1..

* extension[flagDetail].valueReference only Reference(ProgrammeFlag or FlagCondition or FlagProvenance)

* contained ^slicing.discriminator.type = #profile
* contained ^slicing.rules = #open
* contained ^slicing.discriminator.path = "contained"

* contained contains provenance 1..1
* contained[provenance] only FlagProvenance

* code MS
* code from $ValueSetPatientFlagCategory (required)
