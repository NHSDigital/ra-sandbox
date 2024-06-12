### Overview

For high level requirements, see [Key purposes of the FGM Flag](index.html#fgm-key-purposes)

### Usecase

<div style="text-align: left;">

  {%include add-fgm-record-usecase.svg%}

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


<div style="text-align: left;">
    <img style="max-width: 70%" alt="Add FGM Flag record workflow BPMN diagram." src="add-fgm-record-workflow.svg"/>
</div>

### System Interactions

The practioner decides to record a 

<div style="text-align: left;">
  {%include add-fgm-record-sequence.svg%}
</div>

### Examples



### Relevant Documentation

* [Bundle](https://hl7.org/fhir/r4/bundle.html)  
* [Transaction](https://hl7.org/fhir/r4/http.html#transaction)  
* [Upsert](https://hl7.org/fhir/r4/http.html#upsert)  