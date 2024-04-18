Instance: undefined
InstanceOf: AllergyIntolerance
Description: "Example MwsAllergyIntolerance Create request - CPN known"
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/MwsAllergyIntolerance"
* contained[0] = recorder
* contained[+] = patient
* code = $nzmt#10533431000116105
* clinicalStatus = $allergyintolerance-clinical#active
* category = #medication
* patient = Reference(patient)
* onsetDateTime = "2024-04-15"
* recorder = Reference(recorder)
* note.text = "Information in the note field will not be visible to people viewing the record through legacy HL7 or SOAP interfaces"
* reaction.id = "1"
* reaction.manifestation = $sct#116289008

Instance: recorder
InstanceOf: PractitionerRole
Usage: #inline
* organization = Reference(Organization/GZZ999-J)
* location = Reference(Location/FZZ999-B)
* practitioner = Reference(Practitioner/96ZZZZ)

Instance: patient
InstanceOf: Patient
Usage: #inline
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/MwsPatient"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZHF0848"
* name.family = "Doyle"
* name.given[0] = "Dandre"
* name.given[+] = "Alessandra"
* birthDate = "2020-08-20"

