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
* criticality = #low

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* verificationStatus.coding.code  = #refuted
* recordedDate =  "2024-03-04T12:31:07+13:00"

* patient = Reference(ZJM9397)
* recorder = Reference(Recorder1)
* asserter = Reference(Asserter1)

* onsetDateTime = "2023"


* contained[0] = Asserter1
* contained[1] = Attester1
* contained[2] = ZJM9397
* contained[3] = Recorder1

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

Instance: Attester1
InstanceOf: PractitionerRole
Description: "Example Attester1"
Usage: #inline

* practitioner = Reference(Practitioner/99ZZZS)
* practitioner.display = "Mrs TestOne Prefix-Test"
* organization = Reference(Organization/GZZ998-G)
* organization.display = "Live Org with Dormant"
* location = Reference(Location/FZZ968-B)
* location.display = "Facility Has All Contact Types TEST"


Instance: Asserter1
InstanceOf: PractitionerRole
Description: "Example Asserter1"
Usage: #inline

* practitioner = Reference(Practitioner/99ZZZS)
* practitioner.display = "Mrs TestOne Prefix-Test"
* organization = Reference(Organization/GZZ998-G)
* organization.display = "Live Org with Dormant"
* location = Reference(Location/FZZ968-B)
* location.display = "Facility Has All Contact Types TEST"


Instance: ZJM9397
InstanceOf: MwsPatient
Usage: #inline
* name[0].family = "Ryan"
* name[=].given[0] = "Jamie"
* name[=].given[+] = "Joseph"
* birthDate = "1972-06-05"

