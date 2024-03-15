

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

This is an example of a create request in which the recroder's CPN is known:
[create AllergyIntolerance request](AllergyIntolerance-MwsAllergyIntolerance.json.html)

The recorder is provided as a relative literal reference to an HPIPractitioner 

```
 "practitioner": {
        "reference": "Practitioner/99ZZZS",
        "display": "Mrs TestOne Prefix-Test"
      }
```

##### Recorder CPN is not known

This is an example of a create request in which the recroder's CPN is not known:
[create AllergyIntolerance request - unknown CPN](AllergyIntolerance-MwsAllergyIntolerance-3.json.html)
The recorder is given as a logical  reference using the local identifier and namespace

```
 "practitioner": {
        "identifier": {
          "value": "my-local-practionerid-1234",
          "system": "http://my-local-practioner-namespace.co.nz"
        },
        "display": "Mrs TestOne Prefix-Test"
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


#### Business  Rules

* To do 


<h3>Create AllergyIntolerance Errors</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Error Scenario</th>
<th>Error Code</th>
<th>Error Message</th>
<th>HTTP Status code</th></tr>

<tr><td>An id must not be supplied on a create operation</td>
<td>EM07302 </td>
<td>Must not be supplied</td>
<td><em>422 Unprocessable entity</em></td></tr>


</table>



