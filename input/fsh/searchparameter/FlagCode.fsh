Instance: FlagCode
InstanceOf: SearchParameter
Title: "SearchParameter for Code in Flag"
Usage: #definition
Description: "Search by code in the Flag resource"

* name = "SearchParameter for Code in Flag"
* url = "http://localhost:8080/fhir/SearchParameter/FlagCode"
* version = "0.1.0"
* status = #active
* date = "2024-02-14"

* insert NHSEngland-PublisherContactCopyright-Instance

* code = #code
* base = #Flag
* type = #token
* expression = "Flag.code"
* xpathUsage = #normal