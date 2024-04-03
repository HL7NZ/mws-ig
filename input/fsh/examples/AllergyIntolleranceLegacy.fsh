Instance: MwsAllergyIntoleranceLegacy-1
InstanceOf: MwsAllergyIntolerance
Description: "Example MwsAllergyIntolerance legacy (uncoded)"
Usage: #example

* id = "13831"

* identifier.system = "https://standards.digital.health.nz/ns/mws-id"
* identifier.value = "13831"

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* clinicalStatus.coding.code = #active

* category = #medication

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* verificationStatus.coding.code  = #refuted
* recordedDate =  "2024-03-04T12:31:07+13:00"

* onsetDateTime = "2024-04-02T00:00:00+13:00"
* note.text = "Amoxicillin was flagged as a limited dosage"

* patient = Reference(Patient/ZHE9360)
