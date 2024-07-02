### Overview

For high level requirements, see  [Key purposes of the Reasonable Adjustment Flag](index.html#ra-key-purposes) 

### Usecase

<div style="text-align: left;">

  {%include add-ra-condition-usecase.svg%}

</div>

### System Interactions

The practioner decides to record condition information on a reasonable adjustment record as supporting detail e.g.  Blind or low vision - both eyes. This typically after a patient consultation and SHALL be with the patients consent.

This could be done with individual calls to the required endpoints, or can be done in a single transaction Bundle.  A transaction Bundle can help with data integrity requirements and also help to reduce required http calls.

<div style="text-align: left;">
  {%include add-ra-condition-sequence.svg%}
</div>

### Examples

* [Patient example](Patient-PatientExample1.html)

The following set of examples constitute the individual associated resources with the intial addition of a flag for Reasonable Adjustment.  This include a patient Flag resource, the adjustment Flag resource and the associated Condition resource.  All resources have contained provenances.

A transaction Bundle is also given that allows these resources (plus the patient) to be entered in an atomic traction.  It uses PUTs, where in the case of an intial update, it may be done as a [conditional update](https://www.hl7.org/fhir/http.html#cond-update)

* [Patient flag](Flag-RAPatientFlagExample1.html)
* [Reasonable Adjustment flag 1](Flag-RAFlagExample1.html)
* [Condition 1](Condition-RAConditionExample1.html)
* [Transaction Bundle 1](Bundle-AddRARecordTransactionExample1.html)

The following set of examples are for the same patient, and constitute an addition flag and condition.  The transaction Bundle here illustates an idempotent update by simply adding the new resources to the first transaction Bundle.

* [Reasonable Adjustment flag 2](Flag-RAFlagExample2.html)
* [Condition 2](Condition-RAConditionExample2.html)
* [Transaction Bundle 2](Bundle-AddRARecordTransactionExample2.html)
