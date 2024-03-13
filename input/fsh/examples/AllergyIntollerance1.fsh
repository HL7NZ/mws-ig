Instance: MwsAllergyIntolerance-1
InstanceOf: MwsAllergyIntolerance
Description: "Example MwsAllergyIntolerance"
Usage: #example

* id = "AI667788899"

* identifier.system = "https://standards.digital.health.nz/ns/mws-id"
* identifier.value = "AI667788899"

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* clinicalStatus.coding.code = #active

* category = #medication

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* verificationStatus.coding.code  = #refuted
* recordedDate =  "2024-03-04T12:31:07+13:00"

* patient = Reference(Patient1)
* recorder = Reference(Recorder1)

* onsetDateTime = "2023"



* contained[0] = Patient1
* contained[1] = Recorder1

* extension[attester].valueReference = Reference(Attester1)
* extension[attestedDate].valueDate =  "2022-06-05"


Instance: Recorder1
InstanceOf: PractitionerRole
Description: "Example Recorder1"
Usage: #inline

* practitioner = Reference(Practitioner/99ZZZS)
* practitioner.display = "Mrs TestOne Prefix-Test"
* organization = Reference(Organization/GZZ998-G)
* organization.display = "Live Org with Dormant"
* location = Reference(Location/FZZ968-B)
* location.display = "Facility Has All Contact Types TEST"


Instance: Patient1 
InstanceOf: MwsPatient
Usage: #inline
* name[0].family = "Ryan"
* name[=].given[0] = "Jamie"
* name[=].given[+] = "Joseph"
* birthDate = "1972-06-05"
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZJM9397"
