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

* patient = Reference(Patient4)
* recorder =  Reference(Recorder4)

* onsetDateTime = "2023"
* note.text = "Information in the note field will not be visible to people viewing the record through legacy HL7 or SOAP interfaces"

* code.coding.system = "http://nzmt.org.nz"
* code.coding.code = #10758391000116108 
* code.coding.display = "thioridazine hydrochloride"

*  reaction.manifestation.coding.system = "http://snomed.info/sct/21000210109/version/20231001?fhir_vs=refset%2F351000210106"
* reaction.manifestation.coding.code = #90128006
* reaction.manifestation.coding.display = "Photosensitivity"

* contained[0] = Patient4
* contained[1] = Recorder4

Instance: Patient4
InstanceOf: MwsPatient
Usage: #inline
* name[0].family = "Ryan"
* name[=].given[0] = "Jamie"
* name[=].given[+] = "Joseph"
* birthDate = "1972-06-05"
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZJM9397"

Instance: Recorder4
InstanceOf: PractitionerRole
Description: "Example Recorder4 - recorder does not have a CPN"
Usage: #inline

//logical reference for practitioner with no known CPN
* practitioner.identifier.value = "my-local-practionerid-1234"
* practitioner.identifier.system = "http://my-local-practioner-namespace.co.nz"

* practitioner.display = "Mrs TestOne Prefix-Test"
* organization = Reference(Organization/GZZ998-G)
* organization.display = "Live Org with Dormant"
* location = Reference(Location/FZZ968-B)
* location.display = "Facility Has All Contact Types TEST"