

### Get Year-to-date Co-payments for Whanau

#### Overview

Get the count of co-payments for the given NHIs in the PSC year-to-date
<div>
{% include search_copayments.svg %}
</div>



####  Get Year-to-date Co-payments for Whanau processing steps:

1. The pharmacist supplies the list of NHIs which constitute the family and the integrating application and sends an HTTP GET request for the count of co-payments for the given NHIs over the PSC year-to-date
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. Any dormant NHIs associated with the input NHIs are added to the list - ALT: NHI not found. Operation Outcome resource returned
4. The count of co-payments for the list of NHIs over the PSC year to date is returned from the claims system <br />
5. The response containing the count of co-payments is returned.



####  Get  Year-to-date Co-payments for Whanau Response Example 
[search co-payment response](Bundle-MD11223344.json.html)


<h4>Get  Year-to-date Co-payments for Whanau - Business Rules and Errors</h4>
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
<td> The NHI id cannot be found  </td></tr>

<tr><td> No more than 100 NHIs may be provided </td>
<td> 400 Bad request  </td>
<td> EM0xxxx </td>
<td> Too many NHIs  </td>
<td> Max of 100 NHIs may be provided</td></tr>

<tr><td>copayment_ytd parameter must be true</td>
<td> 400 Bad request </td>
<td> EM07201 </td>
<td> Missing a required field </td>
<td> copayment_ytd parameter must be true</td></tr> 
</table>
