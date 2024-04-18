

### Get AllergyIntolerance for Patient

This is typically used to get all AllergyIntolerances for a patient.

<div>
{% include search-AllergyIntolerance.svg %}
</div>



####  Get AllergyIntolerance for Patient  processing steps:

1. A FHIR Client sends a GET request  to the MWS  *AllergyIntolerance* endpoint with  the 'patient' query parameter specifying the patient's NHI number
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. AllergyIntolerances for  this NHI are retrieved from the MWS database
4. A bundle of MwsAllergyIntolerance resources is returned to the client


####  Search AllergyIntolerance Response Example 
[get-enrolment-response-message-1](Bundle-AI123456.json.html)



### Search AllergyIntolerance for Patient
This is used to find all AllergyIntolerances for a patient filtered by category. 


<div>
{% include search-AllergyIntoleranceByCategory.svg %}
</div>


<h3>Get and Search AllergyIntolerance for Patient Business Rules and Errors</h3>
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

<tr><td> NHI number is a required search parameter </td>
<td> 400 Bad request </td>
<td>  </td>
<td> </td>
<td> Not supported. The FHIR endpoint on this server does not know how to handle GET operation with parameters [category] </td></tr>

<tr><td> the NHI number parameter must exist in NHI </td>
<td> 404 Not found </td>
<td> EM02002 </td>
<td> Cannot be found </td>
<td> The MWS id cannot be found in MWS </td></tr>

<tr><td> Category parameter must contain a valid category code </td>
<td> 400 Bad request </td>
<td> EM07217 </td>
<td> Category contains invalid text </td>
<td> Category must contain a valid category </td></tr>
</table>

