Instance: MedicationDispenseBundle-1
InstanceOf: Bundle
Description: "Example MedicationDispenseBundle copayment_claims_ytd search response" 
Usage: #example

* id = "MD11223344"
* type = #searchset

* total = 2

* entry[0].resource.resourceType = "MedicationDispense"
* entry[0].resource.id = "1QH2QN6QCYKVX2Y9J2 "
* entry[0].resource.status = #completed
* entry[0].resource.medicationCodeableConcept.coding.system = "http://nzmt.org.nz"
* entry[0].resource.medicationCodeableConcept.coding.code = #350302831000117105
* entry[0].resource.medicationCodeableConcept.coding.display = "CODEINE PHOSPHATE 30mg Tablets"

* entry[0].resource.subject.reference = "Patient/ZSY0175"
* entry[0].resource.whenPrepared = "2024-09-02T14:10:27+12:00"
* entry[0].resource.location.reference = "Location/FZZ997-J"

* entry[0].resource.extension[nzeps-pharmacy-approval-original].url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-pharmacy-approval-original"
* entry[0].resource.extension[nzeps-pharmacy-approval-original].valueString = "123456"
* entry[0].resource.extension[nzeps-scriptno-local].url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-scriptno-local"
* entry[0].resource.extension[nzeps-scriptno-local].valueString = "654321"


* entry[1].resource.resourceType = "MedicationDispense"
* entry[1].resource.id = "1QH2QN70VXP9CWFVX7"
* entry[1].resource.status = #completed
* entry[1].resource.medicationCodeableConcept.coding.system = "http://nzmt.org.nz"
* entry[1].resource.medicationCodeableConcept.coding.code = #50108931000117106
* entry[1].resource.medicationCodeableConcept.coding.display = "RA-MORPH 1mg/ml Liquid"

* entry[1].resource.subject.reference = "Patient/YNS4214"
* entry[1].resource.whenPrepared = "2024-09-01T14:10:27+12:00"

* entry[1].resource.extension[nzeps-pharmacy-approval-original].url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-pharmacy-approval-original"
* entry[1].resource.extension[nzeps-pharmacy-approval-original].valueString = "667788"
* entry[1].resource.extension[nzeps-scriptno-local].url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-scriptno-local"
* entry[1].resource.extension[nzeps-scriptno-local].valueString = "887766"




