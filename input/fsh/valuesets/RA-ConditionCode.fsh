ValueSet: RA-ConditionCode
Id: RA-ConditionCode
Title: "Reasonable Adjustments Record Condition Code"
Description: "A ValueSet to identify the SNOMED-CT concept representing an Impairment recorded as part of a Reasonable Adjustment"

* ^name = "ReasonableAdjustmentsConditionCode"
* ^url = "https://fhir.nhs.uk/England/ValueSet/RA-ConditionCode"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2024-02-14"
* ^experimental = false

* insert NHSEngland-PublisherContactCopyright

* ^expansion.timestamp = "2024-02-14T12:00:00+00:00"
* ^expansion.contains[0].system = "https://fhir.nhs.uk/England/CodeSystem/RARecord-ConditionCode"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Vision (for example blindness or partial sight)"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RARecord-ConditionCode"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Hearing (for example deafness or partial hearing)"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RARecord-ConditionCode"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Mobility (for example walking short distances or climbing stairs)"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RARecord-ConditionCode"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "Dexterity (for example lifting and carrying objects, using a keyboard)"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RARecord-ConditionCode"
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "Learning or understanding or concentrating"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RARecord-ConditionCode"
* ^expansion.contains[=].code = #6
* ^expansion.contains[=].display = "Memory"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RARecord-ConditionCode"
* ^expansion.contains[=].code = #7
* ^expansion.contains[=].display = "Mental health"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RARecord-ConditionCode"
* ^expansion.contains[=].code = #8
* ^expansion.contains[=].display = "Stamina or breathing or fatigue"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RARecord-ConditionCode"
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "Social or behavioural (for example associated with autism spectrum disorder (ASD) which includes Asperger’s, or attention deficit hyperactivity disorder (ADHD))"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RARecord-ConditionCode"
* ^expansion.contains[=].code = #10
* ^expansion.contains[=].display = "Other (please specify)"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RARecord-ConditionCode"
* ^expansion.contains[=].code = #12
* ^expansion.contains[=].display = "Patient would prefer not to say"
