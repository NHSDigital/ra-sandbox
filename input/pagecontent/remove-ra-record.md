#### Summary

<p>Practioner wishes to remove an entire RA Record</p>    

#### Workflow
<p>
A patient presents to be examined by a practitioner. The Practioner perofrms an examination and retrieve Patient's RA Record.After that , Practitioner make a request to remove RA Record as it's no longer needed and inactivates all Reasonable Adjustment resources for Patient.
</p>

<div>
    <img style="max-width: 70%" alt="Activity created in draw.io!" src="Remove-RA.drawio.png"/>
</div>

#### Patient's RA Record Removed

<div>
    <img style="max-width: 70%" alt="Patient's RA Record Removed" src="remove-rarecord.drawio.png"/>
</div>

#### Example

To remove a flag you must provide a reason for it being removed, for example the flag may have been created in error, or the flag may no longer apply to the patient.

For a patient it is represented as RARecord-RemovalReason-1. This triggers the system to inactivate all Reasonable Adjustment Flag resources contained within the patient record.