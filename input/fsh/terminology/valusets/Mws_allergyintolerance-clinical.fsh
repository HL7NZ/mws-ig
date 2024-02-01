ValueSet: Mws_allergyintolerance_clinical
Id: mws-allergyintolerance-clinical-1.0
Title: "Mws Allergyintolerance clinical status"
Description: "NES Enrolment Status"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/mws-allergyintolerance-clinical"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-09T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for the status of an enrolment ."
* ^compose.inactive = true
* include codes from system 	http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical 
* exclude http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#resolved
