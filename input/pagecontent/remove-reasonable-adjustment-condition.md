### Overview

For high level requirements, see [Key purposes of the Reasonable Adjustment Flag](index.html#ra-key-purposes)
 

#### UseCase

<div style="text-align: left;">

  {%include remove-ra-condition-usecase.svg%}

</div>

### System Interactions

In the following sequence diagram, a patient and/or practitioner decide to remove the condition information as supporting detail on th reasonable adjustment record.


<div style="text-align: left;">

  {%include remove-ra-condition-sequence.svg%}

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

### Relevant Documentation

* [Bundle](https://hl7.org/fhir/r4/bundle.html)  
* [Transaction](https://hl7.org/fhir/r4/http.html#transaction)  