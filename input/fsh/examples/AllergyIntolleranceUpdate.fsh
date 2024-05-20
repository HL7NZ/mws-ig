Instance: MwsAllergyIntolerance-4
InstanceOf: AllergyIntolerance
Description: "Example MwsAllergyIntolerance Update request"
Usage: #example
* identifier.system = "https://standards.digital.health.nz/ns/mws-id"
* identifier.value = "cff10119-671c-4e6f-8776-0a573344320a"
* meta.versionId = "1"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/MwsAllergyIntolerance"
* contained[0] = recorder3
* contained[+] = patient3
* code = $nzmt#10533431000116105
* clinicalStatus = $allergyintolerance-clinical#active
* category = #medication
* patient = Reference(patient)
* onsetDateTime = "2024-04-15"
* recorder = Reference(recorder)
* note.text = "Information in the note field will not be visible to people viewing the record through legacy HL7 or SOAP interfaces"
* reaction.id = "1"
* reaction.manifestation = $sct#116289008

Instance: recorder3
InstanceOf: PractitionerRole
Usage: #inline
* organization = Reference(Organization/GZZ999-J)
* location = Reference(Location/FZZ999-B)
* practitioner = Reference(Practitioner/96ZZZZ)

Instance: patient3
InstanceOf: Patient
Usage: #inline
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/MwsPatient"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZHF0864"
* name.family = "Lynch"
* name.given[0] = "Miracle"
* name.given[+] = "Rosanna"
* birthDate = "2021-10-11"
