Extension: Legacy_description
Id: mws-legacy-description
Description: "Describes the allergy or intolerance in a format which can be consumed by SOAP and HL7 v2 APIs"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/mws-legacy-description"
//* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "MwsAllergyIntolerance"

* ^status = #draft

* value[x] only string
