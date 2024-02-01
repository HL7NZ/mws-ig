

//defined in NZ Base
Alias: $suburb = http://hl7.org.nz/fhir/StructureDefinition/suburb
Alias: $NZGeocode = http://hl7.org.nz/fhir/StructureDefinition/nz-geocode
Alias: $buildingName = http://hl7.org.nz/fhir/StructureDefinition/building-name
Alias: $domicileCode = http://hl7.org.nz/fhir/StructureDefinition/domicile-code


Profile:        MwsAllergyIntolerance 

Parent:         AllergyIntolerance          

Id:             MwsAllergyIntolerance
Title:          "MwsAllergyIntolerance"
Description:    "Restricts AllergyIntolerance to the elements needed to describe an MWS record classified as ALLERGY or DRUG"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/MwsAllergyIntolerance"



//excluded

* encounter 0..0 
* type 0..0
* code 0..0
* lastOccurrence 0..0
* reaction.description 0..0
* reaction.onset 0..0
* reaction.severity 0..0
* reaction.exposureRoute 0..0
* reaction.note 0..0





