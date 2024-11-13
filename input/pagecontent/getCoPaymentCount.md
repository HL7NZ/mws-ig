

### Get Year-to-date Co-payments for Whanau

#### Overview

Get the count of co-payment claims for the given NHIs in the PSC year-to-date
<div>
{% include get_copayment_claims.svg %}
</div>



####  Get Year-to-date Co-payments for Whanau by ID processing steps:

1. The pharmacist supplies the list of NHIs which constitute the family
2. The integrating application sends an HTTP GET request for the count of co-payment claims for the given NHIs over the PSC year-to-date
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The claims information is returned from proclaim- ALT: NHI not found. Operation Outcome resource returned<br />
5. The response containing the AllergyIntolerance record is returned.



####  Get Get Year-to-date Co-payments for Whanau Response Example 
[get-Co-payment-response](Bundle-MD11223344.json.html)


<h4>Get Get Year-to-date Co-payments for WhanauBusiness Rules and Errors</h4>
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

<tr><td>copayment_claims_ytd parameter must be  true </td>
<td> 400 Bad request </td>
<td> EM07201 </td>

</table>
