ValueSet: RA-ProxyRole
Id: RA-ProxyRole
Title: "Reasonable Adjustments Record Proxy Role"
Description: "A ValueSet to identify the type/role of the proxy involved."
* ^url = "https://fhir.nhs.uk/England/ValueSet/RA-ProxyRole"
* ^version = "0.1.0"
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
* ^expansion.contains[0].system = "https://fhir.nhs.uk/England/CodeSystem/RA-ProxyRole"
* ^expansion.contains[=].code = #001
* ^expansion.contains[=].display = "Patient consent"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RA-ProxyRole"
* ^expansion.contains[=].code = #002
* ^expansion.contains[=].display = "Best interest decision made on behalf of the patient (Mental Capacity Act 2005)"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RA-ProxyRole"
* ^expansion.contains[=].code = #003
* ^expansion.contains[=].display = "Lasting power of attorney for health and welfare, or court-appointed deputy, or equivalent"
* ^expansion.contains[+].system = "https://fhir.nhs.uk/England/CodeSystem/RA-ProxyRole"
* ^expansion.contains[=].code = #004
* ^expansion.contains[=].display = "Other legitimate patient representative - parental responsibility"