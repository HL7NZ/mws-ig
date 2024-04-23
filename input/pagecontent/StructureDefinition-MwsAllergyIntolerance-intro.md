### MWS Profile

MWS AllergyIntolerance resource represents the nationally held allergy and adverse drug reactions for a patient. 

It includes the following attributes 
* clinicalStatus
* verificationStatus 
* category
* patient (NHI)
* substance 
* reaction manifestations
* onsetDate
* Recorder
* Recorded date
* notes

Other attributes from the standard profile maybe considered for future releases.

### RecordedDate

MWS populates this date from the system date when the record is created or updated. <br />
It must not be supplied on create.

### Recorder

Recorder has 3 parts organisation, facility/location and person/practitioner.<br />
The facility and person are required. The organisation is optional.<br />
Each are represented by an HPI identifier. HPI Organisation ID, HPI Facility ID and HPI CPN.<br />
Currently only an HPI CPN is acceptable – If HPI responsible authority ID eg medical council number is preferred please provide that feedback.<br />
Where the recorder is a person without an HPI CPN then a local identifier must be supplied.<br />

### Category
The category is mandatory and must be derived from the code that a user has selected. It should not be user entered.

