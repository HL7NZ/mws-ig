Instance: MwsAllergyIntoleranceBundle-1
InstanceOf: Bundle
Description: "Example MwsAllergyIntolerance search response" 
Usage: #example

* id = "AI123456"
* type = #searchset

* entry[0].resource.resourceType = "AllergyIntolerance"

* entry[0].resource.clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* entry[0].resource.clinicalStatus.coding.code = #active

* entry[0].resource.category = #medication

* entry[0].resource.verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* entry[0].resource.verificationStatus.coding.code  = #refuted
* entry[0].resource.recordedDate = "2024-03-04T12:31:07+13:00"

* entry[0].resource.patient = Reference(Patient3)
* entry[0].resource.recorder = Reference(Recorder3)

* entry[0].resource.onsetDateTime = "2023"

* entry[0].resource.note.text = "Information in the note field will not be visible to people viewing the record through legacy HL7 or SOAP interfaces"

* entry[0].resource.contained[0] = Patient3
* entry[0].resource.contained[1] = Recorder3

* entry[0].resource.clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* entry[0].resource.clinicalStatus.coding.code = #active


* entry[0].resource.code.coding.system = "http://nzmt.org.nz"
* entry[0].resource.code.coding.code = #44781901000116100
* entry[0].resource.code.coding.display = "olodaterol"


Instance: Recorder3
InstanceOf: PractitionerRole
Description: "Example Recorder3"
Usage: #inline

* practitioner = Reference(Practitioner/99ZZZS)
* practitioner.display = "Mrs TestOne Prefix-Test"
* organization = Reference(Organization/GZZ998-G)
* organization.display = "Live Org with Dormant"
* location = Reference(Location/FZZ968-B)
* location.display = "Facility Has All Contact Types TEST"



Instance: Patient3
InstanceOf: MwsPatient
Usage: #inline
* name[0].family = "Briscoe"
* name[=].given[0] = "Bobby"
* birthDate = "1988-05-06"
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZJM9397"


