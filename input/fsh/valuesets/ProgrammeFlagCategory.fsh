ValueSet: ProgrammeFlagCategory
Id: ProgrammeFlagCategory
Title: "NHSE Programme Flag Category"
Description: "A ValueSet to identify the flag category."

* ^name = "ProgrammeFlagCategory"
* ^url = "https://fhir.nhs.uk/England/ValueSet/ProgrammeFlagCategory"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2024-02-14"
* ^experimental = false

* insert NHSEngland-Copyright

* ^expansion.timestamp = "2024-02-14T12:00:00+00:00"
* ^expansion.contains[0].system = "https://fhir.nhs.uk/England/CodeSystem/RA-FlagCategory"
* ^expansion.contains[=].code = #001
* ^expansion.contains[=].display = "Communication support"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RA-FlagCategory"
* ^expansion.contains[=].code = #002
* ^expansion.contains[=].display = "Requires communication professional"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RA-FlagCategory"
* ^expansion.contains[=].code = #003
* ^expansion.contains[=].display = "Requires specific contact method"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RA-FlagCategory"
* ^expansion.contains[=].code = #004
* ^expansion.contains[=].display = "Requires specific information format"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RA-FlagCategory"
* ^expansion.contains[=].code = #005
* ^expansion.contains[=].display = "Additional communication needs and support"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RA-FlagCategory"
* ^expansion.contains[=].code = #006
* ^expansion.contains[=].display = "Community Language Support"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RA-FlagCategory"
* ^expansion.contains[=].code = #007
* ^expansion.contains[=].display = "Adjustments for providing Additional Support to patients"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RA-FlagCategory"
* ^expansion.contains[=].code = #008
* ^expansion.contains[=].display = "Adjustments for Individual Care Requirements"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RA-FlagCategory"
* ^expansion.contains[=].code = #009
* ^expansion.contains[=].display = "Adjustments in relation to the environment of care"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RA-FlagCategory"
* ^expansion.contains[=].code = #010
* ^expansion.contains[=].display = "Adjustments to support Additional needs"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RA-FlagCategory"
* ^expansion.contains[=].code = #011
* ^expansion.contains[=].display = "Bespoke Reasonable adjustments"

* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/CPIS-FlagCategory"
* ^expansion.contains[=].code = #001
* ^expansion.contains[=].display = "Example CPIS category"

* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/FGM-FlagCategory"
* ^expansion.contains[=].code = #001
* ^expansion.contains[=].display = "Example FGM category"