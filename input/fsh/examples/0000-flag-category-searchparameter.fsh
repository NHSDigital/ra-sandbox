Instance: 0000-flag-category-searchparameter
InstanceOf: SearchParameter
Usage: #definition
* url = "http://localhost:8080/fhir/SearchParameter/FlagCategory"
* version = "1"
* name = "Search for Flag.category"
* status = #active
* description = "Search by category in the Flag resource"
* code = #category
* base = #Flag
* type = #token
* expression = "Flag.category"
* xpathUsage = #normal