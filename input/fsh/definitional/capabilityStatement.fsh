Alias: $EventCapabilityMode = http://hl7.org/fhir/event-capability-mode

Instance: MWSCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition



* status =  #draft
* date = "2023-05-24"
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json
* patchFormat = #json

* publisher = "Te Whatu Ora"
* contact.name = "Integration Team"
* contact.telecom.system = #email
* contact.telecom.value = "mailto:integration@health.govt.nz"
* description = "MWS FHIR Capabilities"
* rest.mode = #server

* rest.resource.type = #AllergyIntolerance
* rest.resource[=].profile = "http://hl7.org.nz/fhir/StructureDefinition/MwsAllergyIntolerance"
* rest.resource[=].interaction[0].code = #read
//comma delimited fields in documentation string extracted by makeCapabilityStatement.js:   <verb,url,doc,scope>
* rest.resource[=].interaction[=].documentation = "GET,[base]/AllergyIntolerance/[id],retrieve an AllergyIntolerance, system/AllergyIntolerance.r"

* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[=].documentation = "POST,[base]/AllergyIntolerance, create a new AllergyIntolerance, system/AllergyIntolerance.c"

* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[=].documentation = "GET,[base]/AllergyIntolerance, search for a Patient's  AllergyIntolerances, system/AllergyIntolerance.s"

* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[0].type = #string
* rest.resource[=].searchParam[0].documentation = "NHI-Id"

* rest.resource[=].searchParam[1].name = "category"
* rest.resource[=].searchParam[1].type = #token
* rest.resource[=].searchParam[1].documentation = "food, medication, environment or biologic"

* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[=].documentation = "PUT,[base]/AllergyIntolerance/[id], update an existing AllergyIntolerance, system/AllergyIntolerance.u"


* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[=].documentation = "DELETE,[base]/AllergyIntolerance/[id], delete  an existing legacy AllergyIntolerance, system/AllergyIntolerance.d"


* rest.resource[+].type = #MedicationDispense
* rest.resource[=].profile = "http://hl7.org.nz/fhir/StructureDefinition/MwsMedicationDispense"
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[=].documentation = "GET,[base]/MedicationDispense,retrieve MedicationDispense co-payments , system/MedicationDispense.s"

* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference


* rest.resource[=].searchParam[+].name = "copayment_claims_ytd"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "food, medication, environment or biologic"