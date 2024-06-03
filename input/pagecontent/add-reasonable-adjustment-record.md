### Overview

Patient consent must be obtained before recording any adjustment or impairment.  See [Consent to Share Information](consent-to-share-information.html) for details of requirements around consent.

For high level requirements, see [Key purposes of the Reasonable Adjustment Flag](index.html#key-purposes) 

### Usecase
After obtaining consent from a patient, a Reasonable Adjustment Record may be created.  This consists of a Flag resource containing an adjustment and a Condition resource may also optionally be created to record the details of an impairment.  

If a Reasonable Adjustment Record exists, a Flag resource designated as the patient flag must be created to indicate that there are reasonable adjustments recorded for the patient.  There is a single instance of this type of resource per patient.

<div style="text-align: left;">

  {%include add-ra-record-usecase.svg%}

</div>

#### Scenarios

```gherkin
Given a practitioner has received consent from a patient
And the consent is for reasonable adjustments
When a practioner adds an adjustment flag
Then an additional flag designated as a patient flag will be created

Given a practitioner has received consent from a patient
And the consent is for reasonable adjustments
When a practioner adds an patient flag
Then the details of who created the patient flag will be recorded
And the flag will be linked to the patient

Given a practitioner has received consent from a patient
And the consent is for reasonable adjustments
When a practioner adds an patient flag
Then the category of the flag will indicate that it is reasonable adjustments

Given a practitioner has received consent from a patient
And the consent is for reasonable adjustments
When a practioner adds an patient flag
Then the code of the flag will indicate that it is reasonable adjustments

Given a practitioner has received consent from a patient
And the consent is for reasonable adjustments
When a practioner adds an adjustment flag
Then the details of who created the adjustment flag will be recorded
And the flag will be linked to the patient

Given a practitioner has received consent from a patient
And the consent is for reasonable adjustments
When a practioner adds an adjustment flag
Then the category of the flag will contain a code that indicates it is reasonable adjustments
And the cateogry of the flag will contain a code that indicates which adjustment category the flag is

Given a practitioner has received consent from a patient
And the consent is for reasonable adjustments
When a practioner adds an adjustment flag
Then the code of the flag will be a SNOMED-CT concept that provide details of the adjustment

Given a practitioner has received consent from a patient
And the consent is for reasonable adjustments
When a practioner adds an adjustment flag
Then a condition resource may also be created
And the details of who created the condition will be recorded
And the condition will be linked to the patient

Given a practitioner has received consent from a patient
And the consent is for reasonable adjustments
When a practioner adds an condition
Then the category of the condition will indicate which catgory the condition is

Given a practitioner has received consent from a patient
And the consent is for reasonable adjustments
When a practioner adds an condition
Then the code of the condition will be a SNOMED-CT concept representing an impairment/condition

Given a practitioner has received consent from a patient
And the consent is for reasonable adjustments
When a practioner adds an adjustment flag
Then a freetext note may be added to the flag
```

### Workflow

A practitioner performs an examination and determines that a condition and/or an adjustment should be recorded.  If the patient does not consent, no details are recorded.  If the patient consents, then the adjustment is recorded, and optionally the condition as well.

<div style="text-align: left;">
    <img style="max-width: 70%" alt="Add Reasonable Adjustment record workflow BPMN diagram." src="add-ra-record-workflow.svg"/>
</div>

### System Interactions

The practioner decides to record a condition with the patients consent.  This could be done with individual calls to the required endpoints, or can be done in a single transaction Bundle.  A transaction Bundle can help with data integrity requirements and also help to reduce required http calls.

<div style="text-align: left;">
  {%include add-ra-record-sequence.svg%}
</div>

### Examples

* [Patient example](Patient-PatientExample1.html)

The following set of examples constitute the individual associated resources with the intial addition of a flag for Reasonable Adjustment.  This includes the Consent resource where the patient has agreed to share information.  Also a patient Flag resource, the adjustment Flag resource and the associated Condition resource.  All resources have contained provenances.

A transaction Bundle is also given that allows these resources (plus the patient) to be entered in an atomic traction.  It uses PUTs, where in the case of an intial update, it may be done as a [conditional update](https://www.hl7.org/fhir/http.html#cond-update)

* [Consent](Consent-RAConsentExample1.html)
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