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

for the delete transaction example provided below, the following query will performed (dynamically during the IG build)

```
POST /Fhir_Server_ENDPOINT
```

This Query will delete the Patient's RA Record.These Particular resources will be deleted with the whole RA Record Removal :

->Consent Resource
->Condition Resource
->Flag Resource

This will be the following Request body [Bundle transaction](Bundle-0012-RemoveRARecordExample.html)
