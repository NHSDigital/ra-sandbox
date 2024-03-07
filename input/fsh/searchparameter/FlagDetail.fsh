Instance: FlagDetail
InstanceOf: SearchParameter
Title: "Search for flag-detail extension"
Usage: #definition
Description: "Search for Condition, Flag or Consent resources referenced in flag detail extension"

* name = "SearchParameterFlagDetailExtension"
* url = "https://fhir.nhs.uk/England/SearchParameter/FlagDetail"
* version = "0.1.0"
* status = #active
* date = "2024-02-14"

* insert NHSEngland-PublisherContactCopyright-Instance

* code = #detail
* base = #Flag
* type = #reference
* expression = "Flag.extension('http://hl7.org/fhir/StructureDefinition/flag-detail')"
* target[0] = #Condition
* target[+] = #Flag
* target[+] = #Consent