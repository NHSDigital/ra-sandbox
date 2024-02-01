Instance: 0000-flag-code-searchparameter
InstanceOf: SearchParameter
Usage: #definition
* url = "http://localhost:8080/fhir/SearchParameter/FlagCode"
* version = "1"
* name = "Search for Flag.code"
* status = #active
* description = "Search by code in the Flag resource"
* code = #code
* base = #Flag
* type = #token
* expression = "Flag.code"
* xpathUsage = #normal