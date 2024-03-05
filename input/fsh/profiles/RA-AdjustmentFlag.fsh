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
    Extension-AdjustmentNotes named adjustmentNotes 0..1 

* extension[adjustmentNotes].value[x] only Annotation
* extension[adjustmentNotes].valueAnnotation 1..

* category ^slicing.discriminator.type = #profile
* category ^slicing.rules = #open
* category ^slicing.discriminator.path = "system"

* category contains masterFlag 1.. MS
* category[masterFlag] from $ValueSetRAFlagCategory (required)

* category contains adjustmentFlag 1.. MS
* category[adjustmentFlag] from $ValueSetRAAdjustmentCategory (required)

* code MS
* code from $ValueSetRAFlagCode (extensible)
