

### Medical Warning Service Onboarding

#### Who can apply for access?

##### To the test environment:

Health Practitioners providing healthcare in relation to the prescribing and dispensing medications, or the recording, treatment or diagnosis of allergies or the risk of adverse drug reactions, this includes administrators recording warnings on behalf of practitioners and their software vendors, will be given access to the Medical Warnings Service (MWS) in the Health Identity Platform (HIP) Compliance environment for testing and training after completing the on-boarding process described below.

##### To the production environment:

Health Practitioners providing healthcare in relation to the prescribing and dispensing medications, or the recording, treatment or diagnosis of allergies or the risk of adverse drug reactions, this includes administrators recording warnings on behalf of practitioners.

Each organisation and user that has access to the MWS accepts their obligations under the Privacy Act 1993 and the Health Information Privacy Code 1994 to only access information about patients they are treating and are authorised to do so.  

#### On-boarding and Implementation

1. To get started, head to ['Consumer onboarding', over at the digital services hub](https://www.tewhatuora.govt.nz/health-services-and-programmes/digital-health/digital-services-hub/consumer-onboarding/). You will need to provide information about your organisation, the product you are developing and the API's you want to integrate with.
  * For more information [have a look at the other resources on the Digital Service Hub](https://www.tewhatuora.govt.nz/health-services-and-programmes/digital-health/digital-services-hub/).
3. Once your onboarding request has been approved, you will be provided with the information to start integration. The integration team will be in touch if further information is required.
  * You will receive your credentials, access token url, provided scopes, and the compliance environment endpoint.
3. Complete your development and testing.
4. Submit the results of the compliance tests by email to the [integration team](mailto:integration@tewhatuora.govt.nz).
5. The integration team will issue a compliance test report. Your application will receive certification to be used in production or additional requirements will need to be met.
  * This can be an iterative process, so please get in touch as needed to discuss the compliance testing process.
6. _Each organisation_ using your application with NHI integrated services must apply individually for access to the production environment (and recieve their own set of credentials) by completing the production form, please email [NHI Access](mailto:nhi_access@health.govt.nz).

* Please allow at least 5 working days for _compliance environment applications_ to be processed.

* Please allow at least 2 weeks for _compliance testing_ to be signed off and returned.

* If _Production credentials_ are required by a large number of organisations accessing your product, please get in touch to discuss options around bulk credential requests and how we can streamline this process.


#### Assistance

Please fill in the [Digital Services Hub Support and Feedback form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/35/create/112).

#### Business Functions

See below for available business functions.  
By using Te Whatu Ora APIs you are accessing personally identifiable information from the NES which is not directly from the individual concerned. You need to consider your obligations under HIPC principle 2, and we may request to see your privacy impact assessment prior to access to production.

<h5>Business Functions</h5>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th>Business Functions</th>
<th>Description</th>
<th>Comments</th></tr>

<tr>
<td>Drug Allergy read</td>
<td>To allow access to get a MWS Allergy Intolerance record by mws-id, or to get a person’s MWS Allergy Intolerance records using NHI and other search parameters</td>
<td><a href="geAllergyIntolerance..html">See Get MWS Allergy Intolerance. use case</a> <br />
<a href="searchAllergyIntolerance.html">See Search MWS Allergy Intolerance. use case</a> </td>
</tr>

<tr>
<td>Drug Allergy maintain</td>
<td>Create and update MWS Allergy Intolerance records</td>
<td><a href="updateAllergyIntolerance.html">See Update MWS Allergy Intolerance use case</a></td>
</tr>


<tr>
<td>Drug Allergy delete</td>
<td>Delete a legacy MWS record</td>
<td><a href="deleteAllergyIntolerance.html">See Delete Legacy Medical Warning use case</a></td>
</tr>
</table>



