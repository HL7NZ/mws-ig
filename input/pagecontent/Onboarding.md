

### Medical Warning Service Onboarding

#### Who can apply for access?

##### To the test environment:

Health professionals, agencies governed by the Health Information Privacy Code (HIPC) and their software vendors will be given access to the Medical Warnings Service (MWS) in the Health Identity Platform (HIP) Compliance environment for testing and training after completing the on-boarding process described below.

##### To the production environment:

Access to the MWS is available to Health professionals and agencies governed by the Health Information Privacy Code (HIPC).

Each organisation and user that has access to the MWS accepts their obligations under the Privacy Act 1993 and the Health Information Privacy Code 1994 to only access information about patients they are treating and are authorised to do so.  

#### On-boarding and Implementation

1. To get started, complete the [online onboarding request form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/67). You will need to provide information about your organisation and the API you want to integrate with.
2. Once your onboarding request has been approved, you will be provided with the information to start your integration. The integration team will be in touch if further information is required.
  * You will receive your credentials in an email and a sms message to the details provided in the onboarding form.
  * You will also receive the access token url, provided scopes, and the UAT endpoint.
3. Complete your development and testing.
4. Submit the results of the compliance tests by email to the [integration team](mailto:integration@health.govt.nz).
5. The integration team will issue a compliance test report. Your application will receive certification to be used in production or additional requirements will need to be met.


Please allow at least 5 working days for these applications to be processed and production credentials issued. If your product is to be used by many different organisations please get in touch to discuss your rollout plans and how we might assist.

If you require help or have any questions regarding the onboarding process, please contact our team by completing a [General enquiry form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/36).

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



