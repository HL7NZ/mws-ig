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
* entry[0].resource.criticality = #low

* entry[0].resource.verificationStatus.coding.system = "https://nzhts.digital.health.nz/fhir/ValueSet/mws-verification-status"
* entry[0].resource.verificationStatus.coding.code  = #refuted
* entry[0].resource.recordedDate = "2024-03-04T12:31:07+13:00"

* entry[0].resource.patient = Reference(ZJM9397)
* entry[0].resource.recorder = Reference(Recorder3)
* entry[0].resource.asserter = Reference(Asserter3)

* entry[0].resource.onsetDateTime = "2023"


* entry[0].resource.contained[0] = Asserter3
* entry[0].resource.contained[1] = Attester3
* entry[0].resource.contained[2] = ZCZ0797
* entry[0].resource.contained[3] = Recorder3

* entry[0].resource.clinicalStatus.coding.system = "https://nzhts.digital.health.nz/fhir/ValueSet/mws-allergyintolerance-clinical-status"
* entry[0].resource.clinicalStatus.coding.code = #active

* entry[0].resource.extension[0].valueReference = Reference(Attester3)
* entry[0].resource.extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/mws-attester"
* entry[0].resource.extension[1].url = "http://hl7.org.nz/fhir/StructureDefinition/mws-attested-date"
* entry[0].resource.extension[1].valueDate =  "2022-06-05"


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

Instance: Attester3
InstanceOf: PractitionerRole
Description: "Example Attester3"
Usage: #inline

* practitioner = Reference(Practitioner/99ZZZS)
* practitioner.display = "Mrs TestOne Prefix-Test"
* organization = Reference(Organization/GZZ998-G)
* organization.display = "Live Org with Dormant"
* location = Reference(Location/FZZ968-B)
* location.display = "Facility Has All Contact Types TEST"


Instance: Asserter3
InstanceOf: PractitionerRole
Description: "Example Asserter3"
Usage: #inline

* practitioner = Reference(Practitioner/99ZZZS)
* practitioner.display = "Mrs TestOne Prefix-Test"
* organization = Reference(Organization/GZZ998-G)
* organization.display = "Live Org with Dormant"
* location = Reference(Location/FZZ968-B)
* location.display = "Facility Has All Contact Types TEST"


Instance: ZCZ0797
InstanceOf: MwsPatient
Usage: #inline
* name[0].family = "Briscoe"
* name[=].given[0] = "Bobby"
* birthDate = "1988-05-06"

