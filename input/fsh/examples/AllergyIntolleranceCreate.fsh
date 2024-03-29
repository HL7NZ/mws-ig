Instance: MwsAllergyIntolerance-2
InstanceOf: MwsAllergyIntolerance
Description: "Example MwsAllergyIntolerance Create request"
Usage: #example

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* clinicalStatus.coding.code = #active

* category = #medication

* verificationStatus.coding.system = "https://nzhts.digital.health.nz/fhir/ValueSet/mws-verification-status"
* verificationStatus.coding.code  = #refuted
* recordedDate =  "2024-03-04T12:31:07+13:00"

* patient = Reference(ZAC7658)
* recorder = Reference(Recorder2)

* reaction.manifestation.coding.system = "http://snomed.info/sct/21000210109/version/20231001?fhir_vs=refset%2F351000210106"
* reaction.manifestation.coding.code = #128477000

* onsetDateTime = "2023"


* contained[0] = Patient2
* contained[1] = Recorder2

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* clinicalStatus.coding.code = #active

* code.coding.system = "http://nzmt.org.nz"
* code.coding.code = #46125321000116100 
* code.coding.display = "cyproterone + ethinylestradiol"

Instance: Recorder2
InstanceOf: PractitionerRole
Description: "Example Recorder1"
Usage: #inline

* practitioner = Reference(Practitioner/99ZZZS)
* practitioner.display = "Mrs TestOne Prefix-Test"
* organization = Reference(Organization/GZZ998-G)
* organization.display = "Live Org with Dormant"
* location = Reference(Location/FZZ968-B)
* location.display = "Facility Has All Contact Types TEST"


Instance: Patient2
InstanceOf: MwsPatient
Usage: #inline
* name[0].family = "YAMAHA"
* name[=].given[0] = "OLIVE"
* birthDate = "2015-08-30"
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZAC7658"

