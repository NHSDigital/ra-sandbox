Instance: FlagCode
InstanceOf: SearchParameter
Title: "Search for Code in Flag"
Usage: #definition
Description: "Search by code in the Flag resource"

* name = "SearchParameterFlagCode"
* url = "https://fhir.nhs.uk/England/SearchParameter/FlagCode"
* version = "0.1.0"
* status = #active
* date = "2024-02-14"

* code = #code
* base = #Flag
* type = #token
* expression = "Flag.code"
* xpathUsage = #normal