Instance: FlagDetail
InstanceOf: SearchParameter
Title: "SearchParameter for Condition, Flag or Consent resources in the flag-detail extension"
Usage: #definition
Description: "Search using extension for flag detail extension in Flag resource"

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