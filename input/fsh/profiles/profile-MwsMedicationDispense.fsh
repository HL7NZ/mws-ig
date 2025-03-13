//defined in NZ Base
Alias: $suburb = http://hl7.org.nz/fhir/StructureDefinition/suburb
Alias: $NZGeocode = http://hl7.org.nz/fhir/StructureDefinition/nz-geocode
Alias: $buildingName = http://hl7.org.nz/fhir/StructureDefinition/building-name
Alias: $domicileCode = http://hl7.org.nz/fhir/StructureDefinition/domicile-code
Alias: $snowmed-351000210106 = http://snomed.info/sct/21000210109/version/20240401?fhir_vs=refset%2F351000210106
Alias: $nzulm = https://nzhts.digital.health.nz/fhir/ValueSet/mws-substance-combined
Alias: $verificationStatus = https://nzhts.digital.health.nz/fhir/ValueSet/mws-verification-status



Profile:        MwsMedicationDispense 

Parent:         http://hl7.org.nz/fhir/StructureDefinition/NzepsMedicationDispense       

Id:             MwsMedicationDispense
Title:          "MwsMedicationDispense"
Description:    "The MedicationDispense resource exposed by the MWS. This contains information related to Year To Date co-payment claims for NHIs."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/MwsMedicationDispense"

//include in summary

//not allowed to add location to summary - ig builder error " : Base isSummary = false, derived isSummary = true"
//* location SU
* extension[nzeps-pharmacy-approval-original] SU
* extension[nzeps-scriptno-local] SU
 


