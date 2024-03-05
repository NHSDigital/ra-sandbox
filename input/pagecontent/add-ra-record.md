
### Summary

<p>Patient wishes to record Consent. Practitioner records Consent information</p>    

#### Workflow

<p>
A patient presents to be examined by a practitioner.  The practitioner performs an examination and determines that a condition and/or an adjustment should be recorded.  If the patient does not consent, no details are recorded.  If the patient consents, then the condition and/or the adjustment is recorded.
</p>

<div>
    <img style="max-width: 70%" alt="Activity created in draw.io!" src="add-condition.drawio.png"/>
</div>

#### Condition Recorded  

<p>
<b>Pre-condition:</b> Patient details have been retrieved/validated.
</p>   

<p>
The practioner decides to record a condition.  This could be done with individual calls to the required endpoints, or can be done in a single transaction Bundle.  A transaction Bundle can help with data integrity requirements and also help to reduce required http calls.
</p>

<div>
    <img style="max-width: 70%" alt="Activity created in draw.io!" src="condition-recorded-sequence.drawio.png"/>
</div>

### Examples

* [Patient example](Patient-PatientExample1.html)

The following set of examples constitute the individual associated resources with the intial addition of a flag for Reasonable Adjustment.  This includes the Consent resource where the patient has agreed to share information.  Also a master Flag resource, the adjustment Flag resource and the associated Condition resource.  All resources have contained provenances.

A transaction Bundle is also given that allows these resources (plus the patient) to be entered in an atomic traction.  It uses PUTs, where in the case of an intial update, it may be done as a [conditional update](https://www.hl7.org/fhir/http.html#cond-update)

* [Consent](Consent-ConsentExample1.html)
* [Master flag](Flag-MasterFlagExample1.html)
* [Adjustment flag 1](Flag-AdjustmentFlagExample1.html)
* [Condition 1](Condition-ConditionExample1.html)
* [Transaction Bundle 1](Bundle-AddConditionTransactionExample1.html)

The following set of examples are for the same patient, and constitute an addition flag and condition.  The transaction Bundle here illustates an idempotent update by simply adding the new resources to the first transaction Bundle.

* [Adjustment flag 2](Flag-AdjustmentFlagExample2.html)
* [Condition 2](Condition-ConditionExample2.html)
* [Transaction Bundle 2](Bundle-AddConditionTransactionExample2.html)

### Relevant Documentation

[Bundles](https://hl7.org/fhir/r4/bundle.html)  
[Transactions](https://hl7.org/fhir/r4/http.html#transaction)  
[Upsert](https://hl7.org/fhir/r4/http.html#upsert)  