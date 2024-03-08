

### Get AllergyIntolerance for Patient

This is typically used to get all AllergyIntolerances for a patient.

<div>
{% include get-enrolment.svg %}
</div>



####  Get Enrolment for Patient  processing steps:

1. A FHIR Client sends a GET request  to the NES  *AllergyIntolerance* endpoint with  the 'patient' query parameter specifying the patient's NHI number
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. AllergyIntolerances for  this NHI are retrieved from the NES database
4. A bundle of MwsAllergyIntolerance resources is returned to the client



####  Search AllergyIntolerance Response Example 
[get-enrolment-response-message-1](Bundle-AI123456.json.html)

#### Business  Rules
1.  An AllergyIntolerance search request must include a valid nhi-id


### Search AllergyIntolerance for Patient
This is typically used to find all AllergyIntolerances for a patient filtered by type or status. 


<div>
{% include search-AllergyIntolerance.svg %}
</div>


