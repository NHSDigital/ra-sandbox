Alias: $ValueSetRAConditionCategory =  https://fhir.nhs.uk/England/ValueSet/RA-ConditionCategory
Alias: $ValueSetRAConditionCode =  https://fhir.nhs.uk/England/ValueSet/RA-ConditionCode

Profile: RA-Condition
Parent: Condition
Id: RA-Condition
Title: "Reasonable Adjustments Condition Profile"
Description: "To (optionally) record an individual Condition for a Reasonable Adjustment Flag"

* ^url = "https://fhir.nhs.uk/England/StructureDefinition/RA-Condition"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2024-02-14"

* contained ^slicing.discriminator.type = #profile
* contained ^slicing.rules = #open
* contained ^slicing.discriminator.path = "contained"
* contained contains provenance 1..1
* contained[provenance] only RA-Provenance

* insert NHSEngland-PublisherContactCopyright

* category 1.. MS
* category from $ValueSetRAConditionCategory (required)
* code 1.. MS
* code from $ValueSetRAConditionCode (extensible)