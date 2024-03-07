Profile: FlagProvenance
Parent: Provenance
Id: FlagProvenance
Title: "NHSE Flag Provenance Profile"
Description: "To record details of the practitioner recording or removing an individual Flag."

* ^name = "FlagProvenance"
* ^url = "https://fhir.nhs.uk/England/StructureDefinition/FlagProvenance"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2024-02-14"

* insert NHSEngland-PublisherContactCopyright

* target only Reference(FlagCondition or FlagConsent or ProgrammeFlag or PatientFlag)
* agent.role from $ValueSetFlagProvenanceRole (extensible)
* agent.who only Reference(Practitioner)
* agent.onBehalfOf only Reference(Organization)
