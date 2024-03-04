Instance: ConsentExample1
InstanceOf: Consent
Usage: #example
* status = #active
* scope = $consentscope#patient-privacy
* category = RA-FlagCategory#NRAF "National Reasonable Adjustments Flag"
* provision.purpose = $sct#370856009 "Limiting access to confidential patient information"
* patient = Reference(Patient/PatientExample1)
* policy.authority = "https://www.gov.uk/"
* policy.uri = "https://www.gov.uk/government/uploads/system/uploads/attachment_data/file/535024/data-security-review.pdf"
* contained.resourceType = "Provenance"
* contained.id = "4c75ce1f-1ad7-4391-b5f6-104754c7e904"
* contained.target.reference = "#"
* contained.recorded = "2024-01-01T11:00:00+00:00"
* contained.activity = $v3-DataOperation#CREATE "create"
* contained.agent.role = $CareConnect-SDSJobRoleName-1#R0260 "General Medical Practitioner"
* contained.agent.who.reference = "https://sds.spineservices.nhs.uk/STU3/Practitioner/2ee4tr6a9"
* contained.agent.onBehalfOf.reference = "https://directory.spineservices.nhs.uk/STU3/Organization/a3e5i7"
