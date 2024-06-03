### Overview

For high level requirements, see [Key purposes of the Patient Flag](index.html#pf-key-purposes)
 

#### UseCase

<div style="text-align: left;">

  {%include remove-pf-record-usecase.svg%}

</div>

#### Scenarios

```gherkin
Given a patient or their advocate revokes consent
And the consent is for reasonable adjustments
When a practioner records the consent
Then consent will be marked as inactive
And all flags will be deleted
And all conditions will be deleted
```

#### Workflow
<p>
  
A patient may revoke consent to share information about Reasonable Adjustment records and if they do, all records must be removed.

</p>

<div>
    <img style="max-width: 70%" alt="Remove Patient Flag record workflow BPMN diagram." src="remove-pf-record-workflow.svg"/>
</div>

### System Interactions

In the following sequence diagram, a patient revokes consent.  The Consent resource is updated to reflect the patient dissent, and all adjustment records are deleted.

<div style="text-align: left;">

  {%include remove-pf-record-sequence.svg%}

</div>

The following resource types will be deleted from the record if consent is not granted i.e.

* [Patient Flag](StructureDefinition-PatientFlag.html)  
* [Programme Flag](StructureDefinition-ProgrammeFlag.html)  
* [Condition Flag](StructureDefinition-FlagCondition.html) 

#### Example

Multiple resources can be deleted using a transaction bundle.  This [example delete transaction Bundle](Bundle-RemoveRARecordExample.html) demonstates deleting the following resources

* [Patient Flag](Flag-RAPatientFlagExample1.html) example.  
* [Programme Flag](Flag-RAFlagExample1.html) example.  
* [Condition Flag](Condition-RAConditionExample1.html) example.  

### Relevant Documentation

* [Bundle](https://hl7.org/fhir/r4/bundle.html)  
* [Transaction](https://hl7.org/fhir/r4/http.html#transaction)  