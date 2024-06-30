### Overview

For high level requirements, see [Key purposes of the Patient Flag](index.html#pf-key-purposes)

### Usecase

<div style="text-align: left;">

  {%include add-pf-record-usecase.svg%}

</div>

### System Interactions

The practioner decides to record patient flag information.

This could be done with individual calls to the required endpoints, or can be done in a single transaction Bundle.  A transaction Bundle can help with data integrity requirements and also help to reduce required http calls.

<div style="text-align: left;">
  {%include add-pf-record-sequence.svg%}
</div>

### Examples

* [Patient example](Patient-PatientExample1.html)

The following set of examples constitute the individual associated resources with the intial addition of a flag for Reasonable Adjustment.  This includes the Consent resource where the patient has agreed to share information.  Also a patient Flag resource, the adjustment Flag resource and the associated Condition resource.  All resources have contained provenances.

A transaction Bundle is also given that allows these resources (plus the patient) to be entered in an atomic traction.  It uses PUTs, where in the case of an intial update, it may be done as a [conditional update](https://www.hl7.org/fhir/http.html#cond-update)

* [Patient flag](Flag-RAPatientFlagExample1.html)
* [Reasonable Adjustment flag 1](Flag-RAFlagExample1.html)
* [Condition 1](Condition-RAConditionExample1.html)
* [Transaction Bundle 1](Bundle-AddRARecordTransactionExample1.html)

The following set of examples are for the same patient, and constitute an addition flag and condition.  The transaction Bundle here illustates an idempotent update by simply adding the new resources to the first transaction Bundle.

* [Reasonable Adjustment flag 2](Flag-RAFlagExample2.html)
* [Condition 2](Condition-RAConditionExample2.html)
* [Transaction Bundle 2](Bundle-AddRARecordTransactionExample2.html)

### Relevant Documentation

* [Bundle](https://hl7.org/fhir/r4/bundle.html)  
* [Transaction](https://hl7.org/fhir/r4/http.html#transaction)  
* [Upsert](https://hl7.org/fhir/r4/http.html#upsert)  