

### Get AllergyIntolerance by ID

#### Overview

The Get AllergyIntolerance operation allows an authorised user to retrieve an AllergyIntolerance  record for a Patient using a known AllergyIntolerance record id.

<div>
{% include get-AllergyIntolerance-by-id.svg %}
</div>



####  Get AllergyIntolerance by ID processing steps:

1. The user supplies an AllergyIntolerance-id to be looked up.
2. The integrating application sends an HTTP GET request for the AllergyIntolerance record using the AllergyIntolerance-id. E.g. GET\<Endpoint>/AllergyIntolerance/[AllergyIntolerance-id]
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The AllergyIntolerance record is retrieved from the MWS database - ALT: AllergyIntolerance Record not found. Operation Outcome resource returned<br />
5. The response containing the AllergyIntolerance record is returned.



####  Get AllergyIntolerance Response Example 
[get-AllergyIntolerance-response](AllergyIntolerance-AI667788899.json.html)


<h4>Get AllergyIntolerance by id Business Rules and Errors</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Business Rule </th>
<th> HTTP error </th>
<th> EM error </th>
<th> Codesystem displayname </th>
<th> Additional description </th>
</tr>

<tr><td> Id parameter must be in MWS </td>
<td> 404 Not found </td>
<td> EM02002 </td>
<td> Cannot be found </td>
<td> The MWS id cannot be found in MWS </td></tr>
</table>
