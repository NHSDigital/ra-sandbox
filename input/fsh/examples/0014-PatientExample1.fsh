Instance: PatientExample1
InstanceOf: Patient
Title: "A simple NHS patient example"
Usage: #example
* identifier.system = "https://fhir.nhs.uk/Id/nhs-number"
* identifier.value = "9912003888"
* active = true
* name.use = #official
* name.family = "Mann"
* name.given = "Alan"
* gender = #male
* birthDate = "1970-01-01"