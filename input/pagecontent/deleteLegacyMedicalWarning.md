

### Delete AllergyIntolerance  for Patient

The Create AllergyIntolerance  operation is initiated by a user who needs to create a new AllergyIntolerance for a patient.


<div>
{% include delete-legacymws.svg %}
</div>



####  Delete AllergyIntolerance processing steps:

1. A FHIR Client sends a DELETE request to the MWS *AllergyIntolerance* endpoint.
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. The Legacy Medical Warning is deleted from the 'Legacy MWS database'.
4. An HTTP 204 No Content is returned to the client



<h4>Delete Legacy Medical Warnings Rules and Errors</h4>
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

<tr><td>The id must be a legacy MWS identifier.</td>
<td>403 Forbidden</td>
<td>EM07304</td>
<td>Delete not allowed</td>
<td>Only legacy MWS records can be deleted. Identifier provided is not a legacy id</td></tr>

<tr><td>The id must exist in legacy MWS</td>
<td>403 Forbidden</td>
<td>EM07304</td>
<td>Delete not allowed</td>
<td>Only legacy MWS records can be deleted. Identifier provided is not a legacy id</td></tr>

<tr><td>The id must be a warning with a legacy category of DRUG or ALERGY. Delete is ignored if not DRUG or ALERGY</td>
<td>204 No content</td>
<td></td>
<td></td>
<td>The server successfully processed the request but is not returning any content</td></tr>
</table>

