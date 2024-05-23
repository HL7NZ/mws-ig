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

* note.text = "Information in the note field will not be visible to people viewing the record through legacy HL7 or SOAP interfaces. Allows Māori macron āēīōūĀĒĪŌŪ and special characters []();:,.+?/-'& "

* code.coding.system = "http://nzmt.org.nz"
* code.coding.code = #46043541000116107 
* code.coding.display = "A/California/7/2009 (H1N1) - like strain (NYMC X-181) + A/Switzerland/9715293/2013 (H3N2) - like strain (A/Switzerland/9715293/2013 NIB-88) + B/Phuket/3073/2013 - like strain (B/Phuket/3073/2013)"

* patient = Reference(Patient/ZJM9397)
* recorder = Reference(Recorder1)

* onsetDateTime = "2023"

* reaction.manifestation.coding.system = "http://snomed.info/sct/21000210109/version/20231001?fhir_vs=refset%2F351000210106"
* reaction.manifestation.coding.code = #128477000
* reaction.manifestation.coding.display = "Abscess"


* contained[0] = Recorder1


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

