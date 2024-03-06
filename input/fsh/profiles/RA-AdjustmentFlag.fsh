Profile: RA-AdjustmentFlag
Parent: Flag
Id: RA-AdjustmentFlag
Title: "Reasonable Adjustments Flag Profile"
Description: "To (optionally) record an individual Adjustment for a Reasonable Adjustment Flag"

* ^name = "ReasonableAdjustmentsFlag"
* ^url = "https://fhir.nhs.uk/England/StructureDefinition/RA-AdjustmentFlag"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2024-02-14"

* insert NHSEngland-PublisherContactCopyright

* extension contains
    Extension-FlagNotes named flagNotes 0..1 

* extension[flagNotes].value[x] only Annotation
* extension[flagNotes].valueAnnotation 1..

* category ^slicing.discriminator.type = #profile
* category ^slicing.rules = #open
* category ^slicing.discriminator.path = "system"

* category contains masterFlag 1.. MS
* category[masterFlag] from $ValueSetPatientFlagCategory (required)

* category contains adjustmentFlag 1.. MS
* category[adjustmentFlag] from $ValueSetRAAdjustmentCategory (required)

* code MS
* code from $ValueSetRAFlagCode (extensible)
