//defined in NZ Base
Alias: $suburb = http://hl7.org.nz/fhir/StructureDefinition/suburb
Alias: $NZGeocode = http://hl7.org.nz/fhir/StructureDefinition/nz-geocode
Alias: $buildingName = http://hl7.org.nz/fhir/StructureDefinition/building-name
Alias: $domicileCode = http://hl7.org.nz/fhir/StructureDefinition/domicile-code
Alias: $snowmed-351000210106 = http://snomed.info/sct/21000210109/version/20231001?fhir_vs=refset%2F351000210106
Alias: $nzulm = https://nzhts.digital.health.nz/fhir/ValueSet/mws-substance-combined
Alias: $verificationStatus = https://nzhts.digital.health.nz/fhir/ValueSet/mws-verification-status



Profile:        MwsAllergyIntolerance 

Parent:         AllergyIntolerance          

Id:             MwsAllergyIntolerance
Title:          "MwsAllergyIntolerance"
Description:    "Restricts AllergyIntolerance to the elements needed to describe an MWS record classified as ALLERGY or DRUG"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/MwsAllergyIntolerance"



//excluded

* encounter 0..0 
* type 0..0
* implicitRules 0..0
* language 0..0
* lastOccurrence 0..0
* reaction.substance 0..0
* reaction.description 0..0
* reaction.onset 0..0
* reaction.severity 0..0
* reaction.exposureRoute 0..0
* reaction.note 0..0
* criticality 0..0
* asserter 0..0

//restrictions
//* meta.profile only http://hl7.org.nz/fhir/StructureDefinition/MwsAllergyIntolerance
* clinicalStatus from https://nzhts.digital.health.nz/fhir/ValueSet/mws-allergyintolerance-clinical
* onset[x] only dateTime
* recorder only  Reference(PractitionerRole) 

* category 0..1
* clinicalStatus 1..1
* note 0..1
* patient only Reference(MwsPatient)

* code from $nzulm
* verificationStatus from $verificationStatus
* reaction 0..1
* reaction.manifestation 1..50
* reaction.manifestation from $snowmed-351000210106
//extensions 
* extension contains
    http://hl7.org.nz/fhir/StructureDefinition/mws-attester  named attester  0..1 and
	http://hl7.org.nz/fhir/StructureDefinition/mws-attested-date named attestedDate 0..1
    
//documentation
* extension[attester] ^short =  "The practitioner that set the current verificationStatus"
* asserter ^short = "identifier of the person who is the source of information about the allergy"
* asserter ^definition = "If the authentication flow is Patient then the service must set the asserter to patient and the NHI number in the token must exist on NH. If the authentication flow is System then the facility(HPI-FacID) and practitioner(HPI-CPN) are required and must be valid ids in the HPI"

// contained resources

* contained 0..2
* contained only PractitionerRole  or  Patient 


