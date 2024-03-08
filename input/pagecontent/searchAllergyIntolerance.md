

### Get Enrolment by ID

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

#### Business  Rules
1.  A Get AllergyIntolerance request must include a valid AllergyIntolerance-id

