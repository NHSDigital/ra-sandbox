Alias: $England-TypedDateTime = https://fhir.nhs.uk/England/ValueSet/England-TypedDateTime

Extension: ExtensionEnglandDateTime
Id: Extension-England-DateTime
Title: "Extension England Date Time"
Description: "This supports the exchange of non-clinical business dates and times.  The extension date and/or time is carried along with a code to identify the type of date and/or time."
* ^url = "https://fhir.nhs.uk/England/StructureDefinition/Extension-England-DateTime"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2023-10-24"
* ^publisher = "NHS England"
* ^contact.name = "NHS England"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "interoperabilityteam@nhs.net"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension extends the Encounter, the Communication, the Organization and the OrganizationAffiliation resources to support the exchange of information describing the specific business related date and/or time."
* ^copyright = "Copyright © 2023+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^context[0].type = #element
* ^context[=].expression = "Organization"
* ^context[+].type = #element
* ^context[=].expression = "OrganizationAffiliation"
* . ^short = "This supports the exchange of dates and/or times."
* . ^definition = "This supports the exchange of dates and/or times.  The extension date and/or time is carried along with a code to identify the type of date and/or time."
* extension contains
    type 1..1 and
    dateTime 1..1
* extension[type] ^short = "Code to identify the type of time/date."
* extension[type].value[x] 1..
* extension[type].value[x] only Coding
* extension[type].value[x] from $England-TypedDateTime (extensible)
* extension[type].value[x] ^short = "A ValueSet to identify the type of business date time."
* extension[type].value[x] ^binding.description = "The type of business date time."
* extension[dateTime] ^short = "The specific business related date and/or time."
* extension[dateTime].value[x] 1..
* extension[dateTime].value[x] only dateTime
* extension[dateTime].value[x] ^short = "The date and/or time."
* url = "https://fhir.nhs.uk/England/StructureDefinition/Extension-England-DateTime" (exactly)
