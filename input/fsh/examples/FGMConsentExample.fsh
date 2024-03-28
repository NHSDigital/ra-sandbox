Instance: FGMConsentExample1
InstanceOf: Consent
Title: "FGM example of Consent resource"
Usage: #example
* meta.profile = "https://fhir.nhs.uk/England/StructureDefinition/FlagConsent"

* extension[0].url = "https://fhir.nhs.uk/England/StructureDefinition/Extension-ConsentCreateSummary"
* extension[=].valueAnnotation.text = "Example of consent create summary extension text"
* extension[+].url = "https://fhir.nhs.uk/England/StructureDefinition/Extension-ConsentRemoveSummary"
* extension[=].valueAnnotation.text = "Example of consent remove summary extension text"

* status = #active
* scope = $consentscope#patient-privacy
* category = PatientFlagCategory#FGM "Female Genital Mutilation Flag"
* provision.purpose = FGM-ConsentPurpose#FGMCONSENT "FGM - Consent to record FGM flags"
* patient = Reference(Patient/PatientExample1)
* policy.authority = "https://www.gov.uk/"
* policy.uri = "https://www.gov.uk/government/uploads/system/uploads/attachment_data/file/535024/data-security-review.pdf"
* policyRule = FlagProxyRole#001

* contained.resourceType = "Provenance"
* contained.id = "bc0dbfb1-7432-46fa-b1b8-0e3648827754"
* contained.target.reference = "#"
* contained.recorded = "2024-01-01T11:00:00+00:00"
* contained.activity = $v3-DataOperation#CREATE "create"
* contained.agent.role = $CareConnect-SDSJobRoleName-1#R0260 "General Medical Practitioner"
* contained.agent.who.reference = "https://sds.spineservices.nhs.uk/STU3/Practitioner/2ee4tr6a9"
* contained.agent.onBehalfOf.reference = "https://directory.spineservices.nhs.uk/STU3/Organization/a3e5i7"
