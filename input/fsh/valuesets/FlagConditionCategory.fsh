ValueSet: FlagConditionCategory
Id: FlagConditionCategory
Title: "NHSE Flag Condition Category"
Description: "A ValueSet to identify the category of a condition."

* ^name = "ReasonableAdjustmentsConditionCategory"
* ^url = "https://fhir.nhs.uk/England/ValueSet/FlagConditionCategory"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2024-02-14"
* ^experimental = false

* insert NHSEngland-PublisherContactCopyright

* ^expansion.timestamp = "2024-02-14T12:00:00+00:00"
* ^expansion.contains[0].system = "https://fhir.nhs.uk/England/CodeSystem/RA-ConditionCategory"
* ^expansion.contains[=].code = #encounter-diagnosis
* ^expansion.contains[=].display = "Encounter Diagnosis"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RA-ConditionCategory"
* ^expansion.contains[=].code = #issue
* ^expansion.contains[=].display = "Issue"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RA-ConditionCategory"
* ^expansion.contains[=].code = #co-morbidity
* ^expansion.contains[=].display = "Co-morbidity"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RA-ConditionCategory"
* ^expansion.contains[=].code = #presenting-complaint
* ^expansion.contains[=].display = "Presenting Complaint"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RA-ConditionCategory"
* ^expansion.contains[=].code = #problem-list-item
* ^expansion.contains[=].display = "Problem List Item"

* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/CPIS-ConditionCategory"
* ^expansion.contains[=].code = #cpis-example-condition-category
* ^expansion.contains[=].display = "CPIS example condition category"

* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/FGM-ConditionCategory"
* ^expansion.contains[=].code = #fgm-example-condition-category
* ^expansion.contains[=].display = "FGM example condition category"
