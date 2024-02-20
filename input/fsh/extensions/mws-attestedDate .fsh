Extension: Mws_attestedDate 
Id: mws-attested-date 
Description: "The practitioner that set the current verificationStatus"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/mws-attested-date"
//* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"

* ^status = #draft

* extension contains   
    attestedDate 0..1  

* extension[attestedDate].value[x] only dateTime


