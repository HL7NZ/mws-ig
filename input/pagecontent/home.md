<html>
<body>

<header>
  <h3>Name</h3>
</header>

MWS AllergyIntolerance FHIR API

<div>

<header>
  <h3> Brief Description</h3>
</header>

Allergies and adverse drug reactions from the national Medical Warning System are accessed and updated using the MWS AllergyIntolerance FHIR API.
These warnings when made available to clinicians at point of care can reduce the risk of medicines and treatment errors. 
The MWS FHIR API is available for integration across the many health settings for example Hospital, General practice, and Community pharmacy.

</div>

<div>

<header>
  <h3> Overview</h3>
</header>

This is a FHIR API made up of one resource:
<ul>
  <li> •	MwsAllergyIntolerance, derived from the HL7 FHIR AllergyIntolerance resource.</li>
</ul>.

</div>

<div>

<header>
  <h4> Accessible Data</h4>
</header>

The MWS AllergyIntolerance FHIR API holds the following information:

<ul>
  <li>clinicalStatus</li>
  <li>verificationStatus</li>
  <li>category</li>
  <li>patient (NHI)</li>
  <li>substance</li>
  <li>reaction manifestations</li>
  <li>onsetDate</li>
  <li>Recorder</li>
  <li>Recorded date</li>
  <li>notes</li>
</ul>

Other attributes from the standard profile maybe considered for future releases.


The patient’s general practice and their phone and email contact details are not held in the NHI but are retrieved from the National Enrolment Service 
and NES Patient Preferences Service respectively, and returned along with the NHI details if the user has the correct permissions.


<h3>Business functions & risk scores</h3>
<div>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Name</th>
<th>Function</th>
<th>Description</th>
<th>Clinical Risk Score</th>
<th>Privacy Risk Score</th>
<th>Security Risk Score</th>
<th>Identity Risk Score</th></tr>
<tr><td>Drug Allergy read</td>
<td>To allow access to get a MWS Allergy Intolerance record by mws-id, or to get a person’s MWS Allergy Intolerance records using NHI and other search parameters</td>
<td>Read - Using a known MWS AllergyIntolerance id, a GET Request is sent to the MWS, the request is validated and returns the associated MWS AllergyIntolerance record. <br />
Search - Using a Patients NHI number, a GET request is sent to the MWS, the request is validated and a Patient’s MWS AllergyIntolerance record(s) are returned.</td>
<td>TBC</td>
<td>TBC</td>
<td>TBC</td>
<td>TBC</td></tr>
<tr><td>Drug Allergy maintain</td>
<td>Create and update MWS Allergy Intolerance records</td>
<td>Create - A POST request is sent to the MWS, the request is validated and MWS AllergyIntolerance ID is assigned and the record is returned. <br />
Update - Using a known MWS AllergyIntolerance id, a PUT Request is sent to the MWS, the request is validated and returns the updated MWS AllergyIntolerance record
</td>
<td>TBC</td>
<td>TBC</td>
<td>TBC</td>
<td>TBC</td>
</tr>
<tr><td>Drug Allergy delete</td>
<td>Delete a legacy MWS record</td>
<td>Using a known legacy MWS ID a DELETE request is sent to the MWS, the id is checked to ensure it is a legacy record and returns confirmation.</td>
<td>TBC</td>
<td>TBC</td>
<td>TBC</td>
<td>TBC</td>
</tr>
</table>

</div>

<div>

<header>
  <h3>Who can use this API</h3>
</header>

Health providers listed in the Health Information Privacy Code may access the information in the MWS in the context of providing clinical care.

This includes: 
<ul>
  <li><small><i>Accident Compensation Corporation (ACC)</i></small></li>
  <li> Department of Corrections Health Services</li>
  <li>Te Whatu Ora — Health New Zealand</li>
  <li>Health Practitioners</li>
  <li>Hospitals</li>
  <li>Independent Practitioner Associations</li>
  <li>MedicAlert Foundation — New Zealand Incorporated</li>
  <li><small><i>Manatū Hauora — Ministry of Health</i></small></li>
  <li>New Zealand Blood and Organ Service</li>
  <li>New Zealand Defense Force Health Services</li>
  <li><small><i>Pharmaceutical Management Agency of New Zealand</i></small></li>
  <li>Primary Health Organisations (PHOs)</li>
  <li><small><i>Maori Health Authority</i></small></li>
  <li><small><i>Ministry for Disabled People</i></small></li>
  <li>Any health agency that has a contract or is funded by the above list to provide health or disability services.</li>
</ul>

Te Whatu Ora — Health New Zealand assigns appropriate permissions and monitors and audits the actions of health provider use of the MWS.

</div>

<div>

<header>
  <h3>Use Cases</h3>
</header>

The below lists a few example outcomes that can be achieved when using the MWS AllergyIntolerance FHIR API.

<ul>
  <li>System to System</li>
    <ul>
      <li>Allowing doctors to record adverse drug reactions as provided by the patient or observed during care.</li>
      <li>Enable automated alerting when prescribing medication for which there is an adverse reaction risk.</li>
      <li>Inpatient kitchen services can check for food allergies.</li>
    </ul>
  <li>Patient (Consumer Facing Application Authentication)</li>
    <ul>
      <li>A person can review the allergy and intolerance information held about them in the MWS.</li>
    </ul>
</ul>

</div>

<div>
  
<header>
  <h3>API Type</h3>
</header>

REST API <br />
All REST API endpoints adhere to Fast Healthcare Interoperable Resources (FHIR) interoperability standards.

</div>

<div>

<header>
  <h3>Service Levels</h3>
</header>

Target 99.99% service availability 24x7.

</div>

<div>

<header>
  <h3>Restrictions</h3>
</header>

<header>
  <h4>GEO Restriction</h4>
</header>

GEO Restriction rules prevent access from clients with IPs located in countries other than those listed below:

<ul>
  <li>New Zealand</li>
  <li>Australia</li>
  <li>Canada</li>
  <li>Cook Islands</li>
</ul>

</div>

<div>

<header>
  <h4>API Keys and Usage Plans</h4>
</header>

API key's should be treated as confidential information and not shared with other parties

An api-key associates the client with a usage plan, which sets upper limits on the API request volume which is permitted. If a client exceeds their usage plan allocation an http error will be returned

Clients will need to add their api key to the x-api-key header in each API request. If no API key is included in the request header, a “Forbidden” error will be returned

<h5>Usage Plans</h5>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Plan </th>
<th> Rate </th>
<th> Burst </th>
<th> Quota </th></tr>

<tr><td> bronze </td>
<td> 1 request per second </td>
<td> 5 </td>
<td> 10,000 requests per day </td></tr>

<tr><td> silver </td>
<td> 5 requests per second </td>
<td> 25 </td>
<td> 250,000 requests per day </td></tr>

<tr><td> gold </td>
<td> 10 requests per second </td>
<td> 50 </td>
<td> 500,000 requests per day </td></tr>
</table>

</div>

<div>

All test accounts will be assigned to the bronze usage plan. If a Vendor wishes to be assigned to a higher plan, they should contact the Integration team via the <a href="https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/36" target="_blank">General Enquiry form</a>. Please request a change to the usage plan and make sure you include the ClientID at minimum (AppId and Orgid also recommended).

Production accounts will be assigned to the silver usage plan. If an Organisation wishes to be assigned to the gold usage plan, they should contact the Te Whatu Ora
<a href="mailto:NHI_Access@health.govt.nz"_blank">NHI access team</a>

If an application reaches its usage plan limit an HTTP 429 error will be returned. The expected behaviour is that the application will retry several times with an exponentially increasing delay

</div>

</body>
</html>
