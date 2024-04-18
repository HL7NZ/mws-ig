


<h4>MWS Search AllergyIntolerance tests</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td> MWS-Search-1 </td>
<td>application can retrieve all warnings for a patient and present details correctly. Your usecase may require that some items are omitted from your UI, if so, please explain:
 <ul>
  <li> mws id or legacy mws id (may not appear on the UI) </li>
  <li> clinicalStatus </li>
  <li> verificationStatus  </li>
  <li> category </li>
  <li> patient (NHI) </li>
  <li> substance </li>
  <li> reaction manifestations </li>
  <li> onsetDate </li>
  <li> Recorded date </li>
  <li> Recorder( organisation, location, practitioner) </li>
  <li> note </li>
 </ul>
</td>
<td>ZLR3241</td>
<td>This test patient has both FHIR created warnings with substance and reaction.manifestation codes and legacy created warnings without these codes.  All warnings should appear to the user. <br />
Output:
<ul>
  <li> All warnings are displayed for the patient </li>
  <li> Information in each warning is presented appropriately </li>
  <li>The note, if present, should appear in the context of the substance and manifestations. It should be clearly visible without needing to click through to see it.  If the note is long at least the first 30 characters should be visible and a clear indication that there is more to read.</li>
</ul>
</td>
<td>Mandatory if applicable</td></tr>

<tr><td> MWS-Search-2 </td>
<td>application handles a patient who has no medical warnings and appropriate messaging id displayed</td>
<td>ZLR3250</td>
<td>This test patient has no medical warnings. Messaging to users must not be that this patient has “no known allergies”.<br />
Output:
<ul>
  <li> No warnings display for the patient </li>
  <li> Messaging should  be along the lines of “MWS has no documented allergies or intolerances for this patient” </li>
</ul>
</td>
<td>Mandatory</td></tr>

<tr><td> MWS-Search-3 </td>
<td>application handles all clincal and verification statuses and applies appropriate filtering for the specific usecases:
 <ul>
  <li> mws id or legacy mws id (may not appear on the UI) </li>
  <li> Clinical status=active </li>
  <li> Clinical status=inactive  </li>
  <li> Verification status=enter-in-error </li>
  <li> Verification status=refuted </li>
 </ul>
</td>
<td>ZLR3268</td>
<td>This test patient has a mix of warnings with various clinical and verification status. 
Output:
<ul>
  <li> Statuses are appropriately handled </li>
</ul>
</td>
<td>Mandatory</td></tr>

<tr><td> MWS-Search-4 </td>
<td>application displays warnings of different categories appropriately:
 <ul>
  <li> mws id or legacy mws id (may not appear on the UI) </li>
  <li> Medicine </li>
  <li> Food (edible substance)  </li>
  <li> Environment (chemical substance) </li>
  <li> Biologic </li>
 </ul>
</td>
<td>ZLR3268</td>
<td>This patient has a mix of all categories.
Output:
<ul>
  <li> The category is clearly presented or particular categories are presented separately depending on the usecase </li>
</ul>
</td>
<td>Mandatory</td></tr>
</table>
