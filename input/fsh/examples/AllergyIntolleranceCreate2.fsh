Instance: MwsAllergyIntolerance-3
InstanceOf: MwsAllergyIntolerance
Description: "Example MwsAllergyIntolerance, where the recorder does not have a CPN"
Usage: #example


* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* clinicalStatus.coding.code = #active

* category = #medication

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* verificationStatus.coding.code  = #refuted
* recordedDate =  "2024-03-04T12:31:07+13:00"

* patient = Reference(Patient2)
* recorder.identifier.value = "my-local-practionerid-1234"
* recorder.identifier.system = "http://my-local-practioner-namespace.co.nz"

* onsetDateTime = "2023"
* note.text = "Information in the note field will not be visible to people viewing the record through legacy HL7 or SOAP interfaces"

* code.coding.system = "http://nzmt.org.nz"
* code.coding.code = #10758391000116108 
* code.coding.display = "thioridazine hydrochloride"

* contained[0] = Patient4

Instance: Patient4
InstanceOf: MwsPatient
Usage: #inline
* name[0].family = "Ryan"
* name[=].given[0] = "Jamie"
* name[=].given[+] = "Joseph"
* birthDate = "1972-06-05"
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZJM9397"
