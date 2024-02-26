Alias: $ValueSetRAFlagCategory =  https://fhir.nhs.uk/England/ValueSet/RA-FlagCategory
Alias: $ValueSetRAFlagCode =  https://fhir.nhs.uk/England/ValueSet/RA-FlagCode
Alias: $ExtensionFlagDetail =  http://hl7.org/fhir/StructureDefinition/flag-detail

Profile: RA-Flag
Parent: Flag
Id: RA-Flag
Title: "Reasonable Adjustments Flag Profile"
Description: "To (optionally) record an individual Adjustment for a Reasonable Adjustment Flag"

* ^url = "https://fhir.nhs.uk/England/StructureDefinition/RA-Flag"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2024-02-14"

* insert NHSEngland-PublisherContactCopyright

* extension contains
    Extension-AdjustmentNotes named adjustmentNotes 0..1 and
    $ExtensionFlagDetail named flagDetail 0..*

* extension[adjustmentNotes].value[x] only Annotation
* extension[adjustmentNotes].valueAnnotation 1..

* extension[flagDetail].valueReference only Reference(RA-Flag or RA-Consent or RA-Provenance)

* contained ^slicing.discriminator.type = #profile
* contained ^slicing.rules = #open
* contained ^slicing.discriminator.path = "contained"
* contained contains provenance 1..1
* contained[provenance] only RA-Provenance

* category 1.. MS
* category from $ValueSetRAFlagCategory (required)
* code MS
* code from $ValueSetRAFlagCode (extensible)
