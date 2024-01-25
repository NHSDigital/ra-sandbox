Alias: $England-OrganisationRole = https://fhir.nhs.uk/England/ValueSet/England-OrganisationRole

Extension: ExtensionEnglandOrganisationRole
Id: Extension-England-OrganisationRole
Title: "Extension England Organisation Role"
Description: "An extension to describe the role of the organisation and whether this is it's primary role."
* ^url = "https://fhir.nhs.uk/England/StructureDefinition/Extension-England-OrganisationRole"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2023-10-18"
* ^publisher = "NHS England"
* ^contact.name = "NHS England"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "interoperabilityteam@nhs.net"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension extends the Organization resource to support the NHS England requirement for additional information about organisational roles."
* ^copyright = "Copyright © 2023+ NHS England Licensed under the Apache License, Version 2.0 (the \\\"License\\\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \\\"AS IS\\\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^context.type = #element
* ^context.expression = "Organization"
* . ^short = "An Extension to describe what an Organisation does and whether this is the primary role of the Organisation."
* extension contains
    primaryRole 1..1 and
    instanceID 1..1 and
    code 1..1 and
    period 1..* and
    active 1..1
* extension[primaryRole] ^short = "This describes the type of role of the organisation."
* extension[primaryRole] ^definition = "This denotes whether the specific role is primary or non primary. Where the Boolean value is true then this is a primary role. Conversely, if the Boolean value is false then this indicates this is a non primary role."
* extension[primaryRole].value[x] 1..
* extension[primaryRole].value[x] only boolean
* extension[instanceID] ^short = "Unique ID for each instance of an organisation role (organisation roles can be ended and then the organisation later undertakes same role again)."
* extension[instanceID].value[x] 1..
* extension[instanceID].value[x] only integer
* extension[code] ^binding.description = "A ValueSet to identify the Organisation Data Service (ODS) role codes"
* extension[code].value[x] from $England-OrganisationRole (extensible)
* extension[code].value[x] 1..
* extension[code].value[x] only CodeableConcept
* extension[code].value[x].coding.code 1..
* extension[period] ^short = "Period of the role"
* extension[period].value[x] 1..
* extension[period].value[x] only Period
* extension[active] ^short = "Roles are either active or inactive"
* extension[active] ^definition = "Where the Boolean value is true, this means that the role is active.  Conversely if the Boolean value is false, then this means that the role is inactive."
* extension[active].value[x] 1..
* extension[active].value[x] only boolean
* url = "https://fhir.nhs.uk/England/StructureDefinition/Extension-England-OrganisationRole" (exactly)
