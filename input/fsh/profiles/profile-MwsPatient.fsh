
Profile:        MwsPatient

Parent:         NzPatient       

Id:             MwsPatient
Title:          "Mws Patient"
Description:    "A minimal profile of NzPatient, containing just enough information to validate a patient's NHI for the purposes of MWS"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/MwsPatient"


//excluded

* language 0..0
* extension[ethnicity] 0..0
* extension[nzCitizen] 0..0
* extension[dhb] 0..0
* extension[domicile-code] 0..0
* extension[pho] 0..0
* extension[sex-at-birth] 0..0
* extension[iwi] 0..0
* telecom 0..0
* gender 0..0
* deceased[x] 0..0
* address 0..0
* maritalStatus 0..0
* multipleBirth[x] 0..0
* photo 0..0
* contact 0..0
* communication 0..*
* generalPractitioner 0..0
* managingOrganization 0..0
* link 0..0
* active 0..0

//constrained
* identifier 1..1
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id" (exactly)