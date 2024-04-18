

### Delete a Legacy Medical Warning for a Patient

The delete operation would be used when a user has selected a legacy uncoded warning, has added any additional data required and have created a FHIR AllergyIntolerance resource. The original legacy warning record can now be deleted.


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
</table>


