Profile: FlagCondition
Parent: Condition
Id: FlagCondition
Title: "NHSE Condition Profile for flags"
Description: "Record an individual condition for a flag in NHS England"

* ^name = "FlagCondition"
* ^url = "https://fhir.nhs.uk/England/StructureDefinition/FlagCondition"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2024-02-14"

* contained ^slicing.discriminator.type = #profile
* contained ^slicing.rules = #open
* contained ^slicing.discriminator.path = "contained"
* contained contains provenance 1..1
* contained[provenance] only FlagProvenance

* insert NHSEngland-Copyright

* category ^slicing.discriminator.type = #pattern
* category ^slicing.rules = #open
* category ^slicing.discriminator.path = "$this"

* category contains patientFlag 1.. MS
* category[patientFlag] from $ValueSetPatientFlagCategory (required)

* category contains conditionCategory 1.. MS
* category[conditionCategory] from $ValueSetFlagConditionCategory (required)

* code 1.. MS
* code from $ValueSetFlagConditionCode (extensible)