Profile: RA-Provenance
Parent: Provenance
Id: RA-Provenance
Title: "Reasonable Adjustments Provenance Profile"
Description: "To record details of the practitioner recording or removing an individual item (Consent, Adjustment or Impairment) within a Reasonable Adjustment Flag."

* ^name = "ReasonableAdjustmentsProvenance"
* ^url = "https://fhir.nhs.uk/England/StructureDefinition/RA-Provenance"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2024-02-14"

* insert NHSEngland-PublisherContactCopyright

* target only Reference(Condition or RA-Consent or RA-AdjustmentFlag or MasterFlag)
* agent.role from $ValueSetRAProvenanceRole (extensible)
* agent.who only Reference(Practitioner)
* agent.onBehalfOf only Reference(Organization)

