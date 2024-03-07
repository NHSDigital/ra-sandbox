Instance: RAConditionExample2
InstanceOf: Condition
Title: "RA Example 2 of a Condition resource for Reasonable Adjustments"
Usage: #example
* meta.profile = "https://fhir.nhs.uk/England/StructureDefinition/FlagCondition"

* clinicalStatus = $condition-clinical#active
* category[0] = PatientFlagCategory#NRAF "National Reasonable Adjustments Flag"
* category[+] = RA-ConditionCategory#issue "Issue"
* code = RA-ConditionCode#9 "Social or behavioural (for example associated with autism spectrum disorder (ASD) which includes Asperger’s, or attention deficit hyperactivity disorder (ADHD))"
* subject = Reference(Patient/PatientExample1)

* contained.resourceType = "Provenance"
* contained.id = "4c75ce1f-1ad7-4391-b5f6-104754c7e904"
* contained.target.reference = "#"
* contained.recorded = "2024-01-01T11:00:00+00:00"
* contained.activity = $v3-DataOperation#CREATE "create"
* contained.agent.role = $CareConnect-SDSJobRoleName-1#R0260 "General Medical Practitioner"
* contained.agent.who.reference = "https://sds.spineservices.nhs.uk/STU3/Practitioner/2ee4tr6a9"
* contained.agent.onBehalfOf.reference = "https://directory.spineservices.nhs.uk/STU3/Organization/a3e5i7"