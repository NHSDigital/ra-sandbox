ValueSet: EnglandChildProtectionPlan
Id: England-ChildProtectionPlan
Title: "England Child Protection Plan"
Description: "A set of codes that define the type of Child Protection Plan that is in place. Selected from UK SNOMED CT."
* ^url = "https://fhir.nhs.uk/England/ValueSet/England-ChildProtectionPlan"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2023-08-18"
* ^publisher = "NHS England"
* ^contact.name = "NHS England"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "interoperabilityteam@nhs.net"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2023+ NHS England Licensed under the Apache License, Version 2.0 (the \\\"License\\\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \\\"AS IS\\\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "6c36caea-57d1-42a7-8621-ae1addc67581"
* ^expansion.timestamp = "2023-09-07T17:36:41+00:00"
* ^expansion.total = 3
* ^expansion.offset = 0
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #342191000000101
* ^expansion.contains[=].display = "Subject to child protection plan"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #764841000000100
* ^expansion.contains[=].display = "Looked after child"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #818901000000100
* ^expansion.contains[=].display = "Unborn child subject to child protection plan"
* include codes from system SNOMED_CT_INT
    where constraint = "(342191000000101 OR 764841000000100 OR 818901000000100)"
