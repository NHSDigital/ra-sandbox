ValueSet: ValueSet-England-ConditionCategory
Id: ValueSet-England-ConditionCategoryy
Title: "ValueSet-England-ConditionCategory"
Description: " A ValueSet to identify the category of a condition."
* ^url = "https://fhir.hl7.org.uk/STU3/ValueSet/CareConnect-ConditionCategory-1"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2024-02-14"
* ^publisher = "NHS England"
* ^contact.name = "NHS England"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "interoperabilityteam@nhs.net"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2023+ NHS England Licensed under the Apache License, Version 2.0 (the \\\"License\\\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \\\"AS IS\\\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.timestamp = "2024-02-14T12:00:00+00:00"
* ^expansion.contains[0].system = "https://fhir.hl7.org.uk/STU3/CodeSystem/CareConnect-ConditionCategory-1"
* ^expansion.contains[=].code = encounter-diagnosis
* ^expansion.contains[=].display = "Encounter Diagnosis"
* ^expansion.contains[=].code = issue
* ^expansion.contains[=].display = "Issue"
* ^expansion.contains[=].code = co-morbidity
* ^expansion.contains[=].display = "Co-morbidity"
* ^expansion.contains[=].code = presenting-complaint
* ^expansion.contains[=].display = "Presenting Complaint"
* ^expansion.contains[=].code = problem-list-item
* ^expansion.contains[=].display = "Problem List Item"
* include codes from system https://fhir.hl7.org.uk/STU3/CodeSystem/CareConnect-ConditionCategory-1|1.0.0

