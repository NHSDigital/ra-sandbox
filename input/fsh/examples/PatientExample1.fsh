Instance: PatientExample1
InstanceOf: Patient
Title: "UKCore patient example with very basic details."
Usage: #example
* meta.profile = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-Patient"

* identifier.system = "https://fhir.nhs.uk/Id/nhs-number"
* identifier.value = "9912003888"
* active = true
* name.use = #official
* name.family = "Mann"
* name.given = "Alan"
* gender = #male
* birthDate = "1970-01-01"