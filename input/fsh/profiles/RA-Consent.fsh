Profile: RA-Consent
Parent: Consent
Id: RA-Consent
Title: "Reasonable Adjustments Consent Profile"
Description: "To record consent to capture Reasonable Adjustments and Reasons for Reasonable Adjustments data"

* ^name = "ReasonableAdjustmentsConsent"
* ^url = "https://fhir.nhs.uk/England/StructureDefinition/RA-Consent"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2024-02-14"

* insert NHSEngland-PublisherContactCopyright

* extension contains
    Extension-ConsentCreateSummary named createSummary 0..1 and
    Extension-ConsentRemoveSummary named removeSummary 0..1

* extension[createSummary].value[x] only Annotation
* extension[createSummary].valueAnnotation 1..

* extension[removeSummary].value[x] only Annotation
* extension[removeSummary].valueAnnotation 1..

* contained ^slicing.discriminator.type = #profile
* contained ^slicing.rules = #open
* contained ^slicing.discriminator.path = "contained"
* contained contains provenance 1..1
* contained[provenance] only RA-Provenance

* category from $ValueSetRAFlagCategory (extensible)
* policy 1..1
* policy.uri 1..
* policyRule 1..
* policyRule from RA-ProxyRole (extensible)
* performer ..1
* performer only Reference(Organization or Patient or Practitioner)
* provision.purpose 1..1
* provision.purpose from RA-ConsentPurpose (extensible)

