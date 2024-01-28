
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

#### Example 1  

> Pre-condition: A patient has previously had a master flag associated with them, and no adjustment is to be recorded

[Single Condition POST](todo.html)  

#### Example 2  

<p>
This example shows the use of a transaction to add all required resources to add a Consent, a Condition and associated adjustments (Flag) resources for a patient.  

The master Flag and condition Flag (and associated Condition) resources are included and have the Provence resource as contained resources.  This example could be modified to include a new condition just by adding the new Condition and Flag resource as this transaction is fully idempotent.  The next example will show this.
</p>

[Example: Add condition resources in a Transaction](Bundle-add-condition-transaction-example-1.html).  

<p>
<b>NOTE</b>: TODO discuss how provenace could be added after (i.e. not contained), but not in a transaction.  If provence needed to be linked to a versioned resource (seems reasonable), this isn't supported https://build.fhir.org/bundle.html#references.  Also see https://chat.fhir.org/#narrow/stream/179166-implementers/topic/Provenance.20in.20a.20bundle.  Using an etag would work.  If the provenance was created after and took the etag of the resource from the response, which should come back for each resource in transaction, the provenance.target could then be set to a versioned url (assuming this was required).  Benefits of this would be ability to expand the scope of the provenace.  If it really doesn't have a lifetime outside of the resource, contained is probably tidier but definetly less flexible.  More discussion here ttps://chat.fhir.org/#narrow/stream/179166-implementers/topic/Transaction.20Bundle.20with.20Provenance/near/402326516.
</p>

<p>
This example simply adds conditions to the previous transaction resource to demonstrate the ability to add new conditions to the same data structure and reply in an idempotent way.  The request entry in the transaction Bundle for the second condition uses the uuid from the fullUrl on the Bundle entry to use in the URL for the PUT method.  The first uses the patient uuid as a search parameter for the PUT.  A uuid would be the preferred method to construct the uuid for the fullUrl in the Bundle entry, so this should be a reasonable example.  This example is just to demonstrate ReSTful capabilities of the FHIR spec.
</p>

[Example: Addition condition to previous Transaction](Bundle-add-condition-transaction-example-2.html).  

<p>
<b>TODO:</b> maybe cover other ways of doing this, all POST's, if-match, X-provenance, batch tranaction etc...
</p>

### Relevant Documentation

[Bundles](https://hl7.org/fhir/r4/bundle.html)  
[Transactions](https://hl7.org/fhir/r4/http.html#transaction)  
[Upsert](https://hl7.org/fhir/r4/http.html#upsert)  
