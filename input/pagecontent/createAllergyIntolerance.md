

### Create AllergyIntolerance  for Patient

The Create AllergyIntolerance  operation is initiated by a user who needs to create a new AllergyIntolerance for a patient.


<div>
{% include create-allergy-intolerance.svg %}
</div>



####  Create AllergyIntolerance processing steps:

1. A FHIR Client sends a POST request to the MWS *AllergyIntolerance* endpoint with  a payload containing the MwsAllergyIntolerance resource to be created, excluding ids
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. The AllergyIntolerance is created in the MWS database and an ID is assigned
4. A newly created  MwsAllergyIntolerance, including its ID,  is returned to the client


####  Create AllergyIntolerance Request Examples

##### Recorder CPN is known

This is an example of a create request in which the recorder's CPN is known:
[create AllergyIntolerance request](AllergyIntolerance-MwsAllergyIntolerance.json.html)

The recorder is provided as a relative literal reference to an HPIPractitioner 

```
 "practitioner": {
        "reference": "Practitioner/99ZZZS"
      }
```

##### Recorder CPN is not known

This is an example of a create request in which the recorder's CPN is not known:
[create AllergyIntolerance request - unknown CPN](AllergyIntolerance-MwsAllergyIntolerance-3.json.html)
The recorder is given as a logical reference using the local identifier and namespace

```
 "practitioner": {
        "identifier": {
          "value": "my-local-practionerid-1234",
          "system": "http://my-local-practioner-namespace.co.nz"
        }
      }
```

#### Behaviour

* FHIR Create AllergyIntolerance request received by the system
* Requester identity checked to make sure they are valid and have correct permission set.
* AllergyIntolerance record is validated.
* The patient identity is validated.
* The request is checked  to make sure the changes requested complies with the relevant AllergyIntolerance Business and Attribute Rules.
* If all the attributes / items in the AllergyIntolerance record are correct
* A new AllergyIntolerance record is created in MWS with the details populated in the request.


<h4>Create AllergyIntolerance Errors</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Business Rule</th>
<th>HTTP error</th>
<th>EM error</th>
<th>Codesystem displayname</th>
<th>Additional description</th></tr>

<tr><td>Clinical Status must be a valid code</td>
<td>422 Processable content </td>
<td></td>
<td></td>
<td>None of the codings provided are in the value set Mws clinical status</td></tr>

<tr><td>Clinical Status is a required field</td>
<td>400 Bad request</td>
<td>EM07201</td>
<td>Missing a required field</td>
<td>Clinical Status is a required field on create</td></tr>

<tr><td>Verification Status must be a valid code</td>
<td>422 Unprocessable content</td>
<td></td>
<td></td>
<td>None of the codings provided are in the value set Mws verification status</td></tr>

<tr><td>Clinical status not allowed if verification status is entered-in-error</td>
<td>422 Unprocessable content</td>
<td></td>
<td></td>
<td>Clinical status not allowed if verification status is entered-in-error</td></tr>

<tr><td>Verification status entered-in-error is not allowed on create</td>
<td>400 Bad request</td>
<td>EM07302</td>
<td>Must not be supplied on this operation</td>
<td>Verification status of enter-in-error must not be supplied on a create operation</td></tr>

<tr><td>A verification status of refuted must have an inactive clinical status</td>
<td>400 Bad request</td>
<td>EM07202</td>
<td>Field is required when another field is present</td>
<td>A verification status of refuted must have an inactive clinical status</td></tr>

<tr><td>Category is a required field</td>
<td>400 Bad request</td>
<td>EM07201</td>
<td>Missing a required field</td>
<td>Category is a required field</td></tr>

<tr><td>Category must be a valid code</td>
<td>422 Unprocessable content</td>
<td></td>
<td></td>
<td>None of the codings provided are in the value set allergy intolerance category</td></tr>

<tr><td>Code is a required  field</td>
<td>400 Bad request</td>
<td>EM07201</td>
<td>Missing a required field</td>
<td>AllergyIntolerance code is a required field</td></tr>

<tr><td>Code must be a valid code</td>
<td>422 Unprocessable content</td>
<td></td>
<td></td>
<td>None of the codings provided are in the value set  mws substance combined</td></tr>

<tr><td>NHI must be in the NHI system</td>
<td>400 Bad request</td>
<td>EM02002</td>
<td>Cannot be found</td>
<td>NHI number supplied cannot be found</td></tr>

<tr><td>The patient demographics supplied must match the NHI details</td>
<td>400 Bad request</td>
<td>EM02008</td>
<td>Patient identity information does not match Patient NHI supplied</td>
<td>Patient details supplied do not match the NHI details</td></tr>

<tr><td>Onset date cannot be in the future</td>
<td>400 Bad request</td>
<td>EM07212</td>
<td>Cannot be a future date</td>
<td>Onset date cannot be in the future</td></tr>

<tr><td>Onset date must be greater than or equal to the patient's date of birth</td>
<td>400 Bad request</td>
<td>EM07303</td>
<td>Date must be greater than date of birth</td>
<td>Onset date must be greater than or equal to the patient's date of birth</td></tr>

<tr><td>RecordedDate must not be supplied on a create</td>
<td>400 Bad request</td>
<td>EM07302</td>
<td>Must not be supplied on this operation</td>
<td>Recorded date must not be supplied on a create. Todays date is used</td></tr>

<tr><td>Recorder location is a required field</td>
<td>400 Bad request</td>
<td>EM07201</td>
<td>Missing a required field</td>
<td>Recorder HPI facilityID is a required field</td></tr>

<tr><td>Recorder location must be a valid HPI facilityID </td>
<td>400 Bad request</td>
<td>EM02002</td>
<td>Cannot be found</td>
<td>HPI Facility ID not found in the HPI</td></tr>

<tr><td>Recorder organization must be a valid HPI OrganisationID</td>
<td>400 Bad request</td>
<td>EM02002</td>
<td>Cannot be found</td>
<td>HPI Organisation ID not found in the HPI</td></tr>

<tr><td>The recorder practitioner must be either an HPI CPN or a local identifier</td>
<td>400 Bad request</td>
<td>EM07201</td>
<td>Missing a required field</td>
<td>Recorder Practitioner is a required field</td></tr>

<tr><td>A recorder practitioner HPI CPN must be in the HPI</td>
<td>400 Bad request</td>
<td>EM02002</td>
<td>Cannot be found</td>
<td>HPI CPN not found in the HPI</td></tr>

<tr><td>A recorder practitioner’s local identifier must have a system and an ID.</td>
<td>400 Bad request</td>
<td>EM07201</td>
<td>Missing a required field</td>
<td>A recorder's local identifier must have a system and ID</td></tr>

<tr><td>Note must contain only allowed characters</td>
<td>422 Unprocessable content</td>
<td></td>
<td></td>
<td>Rule NOTE-ALLOWED-CHARS  character restrictions for notes</td></tr>

<tr><td>Note must not exceed 1024 characters</td>
<td>422 Unprocessable content</td>
<td></td>
<td></td>
<td>Rule NOTE-LENGTH Notes must be less than 1024 characters</td></tr>

<tr><td>Manifestation must be a valid code</td>
<td>422 Unprocessable content</td>
<td></td>
<td></td>
<td>None of the codings provided are in the value set  mws manifestations</td></tr>

<tr><td>A maximum of 50 manifestations is allowed</td>
<td>422 Unprocessable content</td>
<td></td>
<td></td>
<td>Reaction.manifestation: max allowed = 50, but found <count></td></tr>
</table>



