Instance: MedicationDispenceBundle-1
InstanceOf: Bundle
Description: "Example MedicationDispenceBundle copayment_claims_ytd search response" 
Usage: #example

* id = "MD11223344"
* type = #searchset

* total = 2

* entry[0].resource.resourceType = "MedicationDispense"
* entry[0].resource.status = #completed
* entry[0].resource.medicationCodeableConcept.coding.system = "http://nzmt.org.nz"
* entry[0].resource.medicationCodeableConcept.coding.code = #350302831000117105
* entry[0].resource.medicationCodeableConcept.coding.display = "CODEINE PHOSPHATE 30mg Tablets"

* entry[0].resource.subject.reference = "Patient/ZSY0175"
* entry[0].resource.whenPrepared = "2024-09-02T14:10:27+12:00"



* entry[1].resource.resourceType = "MedicationDispense"
* entry[1].resource.status = #completed
* entry[1].resource.medicationCodeableConcept.coding.system = "http://nzmt.org.nz"
* entry[1].resource.medicationCodeableConcept.coding.code = #50108931000117106
* entry[1].resource.medicationCodeableConcept.coding.display = "RA-MORPH 1mg/ml Liquid"

* entry[1].resource.subject.reference = "Patient/YNS4214"
* entry[1].resource.whenPrepared = "2024-09-01T14:10:27+12:00"


