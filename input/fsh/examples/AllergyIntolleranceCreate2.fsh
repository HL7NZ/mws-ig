Instance: MwsAllergyIntolerance-3
InstanceOf: AllergyIntolerance
Description: "Example MwsAllergyIntolerance, where the recorder does not have a CPN"
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/MwsAllergyIntolerance"
* contained[0] = recorder2
* contained[+] = patient2
* code = $sct#227215000
* clinicalStatus = $allergyintolerance-clinical#active
* category = #food
* patient = Reference(patient)
* onsetDateTime = "2024-04-16"
* recorder = Reference(recorder)
* note.text = "Information in the note field will not be visible to people viewing the record through legacy HL7 or SOAP interfaces"
* reaction.id = "1"
* reaction.manifestation = $sct#21522001

Instance: recorder2
InstanceOf: PractitionerRole
Usage: #inline
* organization = Reference(Organization/GZZ999-J)
* location = Reference(Location/FZZ999-B)
* practitioner.identifier.system = "http://my-local-practioner-namespace.co.nz"
* practitioner.identifier.value = "my-local-practionerid-1234"
* practitioner.display = "Mrs. TestOne Medical"

Instance: patient2
InstanceOf: Patient
Usage: #inline
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/MwsPatient"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZHF0988"
* name.family = "Ortiz"
* name.given[0] = "Paula"
* name.given[+] = "Leilani"
* birthDate = "2018-12-08"
