Extension: Mws_attester
Id: mws-attester
Description: "The practitioner that set the current verificationStatus"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/mws-attester"
//* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "MwsAllergyIntolerance"

* ^status = #draft

* extension contains   
    attester 0..1 and   
    verifiedDate 0..1 

* extension[attester].value[x] only Reference(PractitionerRole)
* extension[verifiedDate].value[x] only dateTime
* extension[verifiedDate].value[x] ^short = "the date the medical warning was verified"
