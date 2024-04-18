### Update AllergyIntolerance  for Patient

The Update AllergyIntolerance operation is initiated by a user who needs to update an AllergyIntolerance record for a patient.


<div>
{% include update-allergy-intolerance.svg %}
</div>



####  Update AllergyIntolerance processing steps:

1. A FHIR Client sends a PUT request to the MWS *AllergyIntolerance* endpoint with  a payload containing the MwsAllergyIntolerance resource to be updated.
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. The AllergyIntolerance is updated in the MWS database
4. A updated MwsAllergyIntolerance record is returned to the client


####  Update AllergyIntolerance Request Example

This is an example of an update request:
[update AllergyIntolerance](AllergyIntolerance-MwsAllergyIntolerance-4.json.html)


<h4>Update AllergyIntolerance Errors</h4>
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

<tr><td>The ID supplied must be found in MWS</td>
<td>404 Not found</td>
<td></td>
<td></td>
<td>Allergy Intolerance with identifier &lt;id&gt; not found</td></tr>

<tr><td>The version supplied must match the version of the current record</td>
<td>400 Bad request</td>
<td>EM07201</td>
<td>The request record version number does not match the current resource record version number</td>
<td>The request record version number does not match the current resource record version number</td></tr>

<tr><td>AllergyIntolerance.clinicalStatus SHALL be present if verificationStatus is not entered-in-error.</td>
<td>400 Bad request</td>
<td></td>
<td></td>
<td>Rule ait-1: 'AllergyIntolerance.clinicalStatus SHALL be present if verificationStatus is not entered-in-error.</td></tr>

<tr><td>AllergyIntolerance.clinicalStatus SHALL NOT be present if verification Status is entered-in-error.</td>
<td>400 Bad request</td>
<td></td>
<td></td>
<td>Rule ait-2: AllergyIntolerance.clinicalStatus SHALL NOT be present if verification Status is entered-in-error</td></tr>

<tr><td>ClinicalStatus must be a valid code.</td>
<td>422 Unprocessable content</td>
<td></td>
<td></td>
<td>None of the codings provided are in the value set clinical status </td></tr>

<tr><td>Verification status must be a valid code</td>
<td>422 Unprocessable content</td>
<td></td>
<td></td>
<td>None of the codings provided are in the value set verification status</td></tr>

<tr><td>A VerificationStatus of refuted must have a clinicalStatus of inactive</td>
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

<tr><td>AllergyIntolerance code is a required field</td>
<td>400 Bad request</td>
<td>EM07201</td>
<td>Missing a required field</td>
<td>Allergy Intolerance code is a required field</td></tr>

<tr><td>AllergyIntolerance.code must be a valid code</td>
<td>422 Unprocessable content</td>
<td>EM07201</td>
<td>Missing a required field</td>
<td>None of the codings provided are in the value set mws substance combined</td></tr>

<tr><td>Patient NHI is a required field</td>
<td>400 Bad request</td>
<td></td>
<td></td>
<td>Patient: minimum required = 1, but only 0 found</td></tr>

<tr><td>The Patient NHI must match the existing NHI on the record or it must be one of the other NHIs valid for the patient.</td>
<td>400 Bad request</td>
<td>EM07306</td>
<td>Request NHI does not match the resource NHI</td>
<td>The Patient NHI supplied is for a different person than the NHI submitted when this warning was created.</td></tr>

<tr><td>Onset date must not be a future date</td>
<td>400 Bad request</td>
<td>EM07212</td>
<td>Cannot be a future date</td>
<td>Onset date cannot be in the future</td></tr>

<tr><td>Onset date must be greater than or equal to the patient's date of birth</td>
<td>400 Bad request</td>
<td>EM07303</td>
<td>Date must be greater than date of birth</td>
<td>Onset date must be greater than or equal to the patient's date of birth</td></tr>

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

<tr><td>A recorder practitioner’s local identifier must have a system and an ID.</td>
<td>400 Bad request</td>
<td>EM07201</td>
<td>Missing a required field</td>
<td>A recorder's local identifier must have a system and ID</td></tr>

<tr><td>Manifestation must be a valid code</td>
<td>422 Unprocessable content</td>
<td></td>
<td></td>
<td>None of the codings provided are in the value set  mws manifestations</td></tr>

<tr><td>The set of manifestations must not include any duplicate manifestation codes</td>
<td>400 Bad request</td>
<td>EM7307</td>
<td>Contains duplicates</td>
<td>The set of reaction manifestations contains duplicate manifestation codes</td></tr>
</table>



