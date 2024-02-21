Extension: Mws_attester
Id: mws-attester
Description: "The practitioner that set the current verificationStatus"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/mws-attester"
//* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"

* ^status = #draft

* extension.value[x] only Reference(PractitionerRole)


 