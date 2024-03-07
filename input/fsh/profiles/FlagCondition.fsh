Profile: FlagCondition
Parent: Condition
Id: FlagCondition
Title: "Condition Profile for flags in NHS England"
Description: "Record an individual condition for a flag in NHS England"

* ^name = "ReasonableAdjustmentsCondition"
* ^url = "https://fhir.nhs.uk/England/StructureDefinition/FlagCondition"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2024-02-14"

* contained ^slicing.discriminator.type = #profile
* contained ^slicing.rules = #open
* contained ^slicing.discriminator.path = "contained"
* contained contains provenance 1..1
* contained[provenance] only RA-Provenance

* insert NHSEngland-PublisherContactCopyright

* category ^slicing.discriminator.type = #type
* category ^slicing.rules = #open
* category ^slicing.discriminator.path = "system"

* category contains patientFlag 1.. MS
* category[patientFlag] from $ValueSetPatientFlagCategory (required)

* category contains conditionCategory 1.. MS
* category[conditionCategory] from $ValueSetFlagConditionCategory (required)

* code 1.. MS
* code from $ValueSetFlagConditionCode (extensible)