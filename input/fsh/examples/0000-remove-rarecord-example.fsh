Alias: $RARecord-RemovalReason-1 = https://fhir.nhs.uk/STU3/CodeSystem/RARecord-RemovalReason-1

Instance: undefined
InstanceOf: Parameters
Usage: #example
* parameter.name = "removeRARecord"
* parameter.part[0].name = "nhsNumber"
* parameter.part[=].valueString = "1100026175"
* parameter.part[+].name = "removalReason"
* parameter.part[=].valueCodeableConcept = $RARecord-RemovalReason-1#DoesntApply "The Reasonable Adjustment Flag no longer applies to the patient"
* parameter.part[+].name = "supportingComment"
* parameter.part[=].valueString = "No longer applies"
