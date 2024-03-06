Profile: RA-MasterFlag
Parent: Flag
Id: RA-MasterFlag
Title: "Reasonable Adjustments Master Flag Profile"
Description: "To record whether Reasonable Adjustment Flags exist"

* ^name = "ReasonableAdjustmentsMasterFlag"
* ^url = "https://fhir.nhs.uk/England/StructureDefinition/RA-MasterFlag"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2024-02-14"

* insert NHSEngland-PublisherContactCopyright

* extension contains
    Extension-FlagNotes named flagNotes 0..1 and
    $ExtensionFlagDetail named flagDetail 0..*

* extension[flagNotes].value[x] only Annotation
* extension[flagNotes].valueAnnotation 1..

* extension[flagDetail].valueReference only Reference(RA-AdjustmentFlag or RA-Consent or RA-Provenance)

* contained ^slicing.discriminator.type = #profile
* contained ^slicing.rules = #open
* contained ^slicing.discriminator.path = "contained"
* contained contains provenance 1..1
* contained[provenance] only RA-Provenance

* category 1.. MS
* category from $ValueSetRAFlagCategory (required)
* code MS
* code from $ValueSetRAFlagCode (extensible)
