Instance: FlagCategory
InstanceOf: SearchParameter
Title: "Search for Category in Flag"
Usage: #definition
Description: "Search by category in the Flag resource"

* name = "SearchParameterFlagCategory"
* url = "https://fhir.nhs.uk/England/SearchParameter/FlagCategory"
* version = "0.1.0"
* status = #active
* date = "2024-02-14"

* code = #category
* base = #Flag
* type = #token
* expression = "Flag.category"
* xpathUsage = #normal