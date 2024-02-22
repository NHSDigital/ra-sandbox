Profile: RA-Flag
Parent: Flag
Id: RA-Flag
Description: "To (optionally) record an individual Adjustment for a Reasonable Adjustment Flag"
* ^version = "2.0.0"
* ^status = #draft
* ^experimental = true
* ^date = "2024-02-20"
* ^publisher = "NHS England"
* ^contact.name = "NHS England"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "interoperabilityteam@nhs.net"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "© 2024 NHS England"
* identifier ..0
* category 1..
* category ^binding.strength = #required
* category ^binding.valueSetReference.reference = "https://fhir.nhs.uk/STU3/ValueSet/RA-FlagCategory"
* code ^binding.strength = #extensible
* code ^binding.valueSetReference.reference = "https://fhir.nhs.uk/England/ValueSet/RA-FlagCode"
* subject only Reference
* subject.id ..0
* subject.identifier ..0
* subject.display ..0
* period ..0
* encounter ..0
* author ..0
