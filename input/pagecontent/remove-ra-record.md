#### Summary

<p>Practioner wishes to remove an entire RA Record</p>    

#### Workflow
<p>
A patient presents to be examined by a practitioner. The practitioner performs an examination and retrieves the patients RA record. The practitioner then decides to remove an RA record for a patient.
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
POST /
```

This Query will delete the Patient's RA Record.These Particular resources will be deleted with the whole RA Record Removal :

* Consent resources
* Flag resources  
* Condition resources  

This will be the following Request body [Bundle transaction](Bundle-RemoveRARecordExample.html)
