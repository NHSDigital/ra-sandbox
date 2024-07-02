### Overview

A patient and/or practitioner decide to remove the reasonable adjustment record.

For high level requirements, see [Key purposes of the Reasonable Adjustment Flag](index.html#ra-key-purposes)   
 

#### UseCase

<div style="text-align: left;">

  {%include remove-ra-record-usecase.svg%}

</div>

### System Interactions

In the following sequence diagram, a patient and/or practitioner decide to remove the reasonable adjustment record. All adjustment records are deleted.

<div style="text-align: left;">

  {%include remove-ra-record-sequence.svg%}

</div>

The following resource types will be deleted from the record:

* [Patient Flag](StructureDefinition-PatientFlag.html)  
* [Programme Flag](StructureDefinition-ProgrammeFlag.html)  
* [Condition Flag](StructureDefinition-FlagCondition.html) 

#### Example

Multiple resources can be deleted using a transaction bundle.  This [example delete transaction Bundle](Bundle-RemoveRARecordExample.html) demonstates deleting the following resources

* [Patient Flag](Flag-RAPatientFlagExample1.html) example.  
* [Programme Flag](Flag-RAFlagExample1.html) example.  
* [Condition Flag](Condition-RAConditionExample1.html) example.  

