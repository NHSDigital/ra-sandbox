Alias: $England-FlagRemovalReason = https://fhir.nhs.uk/England/ValueSet/England-FlagRemovalReason

Extension: ExtensionEnglandFlagRemovalReason
Id: Extension-England-FlagRemovalReason
Title: "Extension England Flag Removal Reason"
Description: "An extension used to allow the removal of a Flag and to indicate the reason why the Flag needs removal or has been removed."
* ^url = "https://fhir.nhs.uk/England/StructureDefinition/Extension-England-FlagRemovalReason"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2023-08-18"
* ^publisher = "NHS England"
* ^contact.name = "NHS England"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "interoperabilityteam@nhs.net"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 2
* ^purpose = "The extension extends the Flag resource to support the NHS England requirements for removal of Flags with a stated reason."
* ^copyright = "Copyright © 2023+ NHS England Licensed under the Apache License, Version 2.0 (the \\\"License\\\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \\\"AS IS\\\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^context.type = #element
* ^context.expression = "Flag"
* url = "https://fhir.nhs.uk/England/StructureDefinition/Extension-England-FlagRemovalReason" (exactly)
* value[x] 1..
* value[x] only Coding
* value[x] from $England-FlagRemovalReason (required)
* value[x].system 1..
* value[x].code 1..
