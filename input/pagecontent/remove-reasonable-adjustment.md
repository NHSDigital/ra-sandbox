### Overview

For high level requirements, see [Key purposes of the Patient Flag](index.html#pf-key-purposes)
 

#### UseCase

<div style="text-align: left;">

  {%include remove-ra-usecase.svg%}

</div>

### System Interactions

In the following sequence diagram, a patient and/or practitioner decide to remove an individual reasonable adjustment. The relevant England-Flag-PatientFlag-Adjustment resource is removed.

<div style="text-align: left;">

  {%include remove-ra-sequence.svg%}

</div>

The following resource types will be deleted from the record:

* [Programme Flag](StructureDefinition-ProgrammeFlag.html)  

#### Example

Multiple resources can be deleted using a transaction bundle.  This [example delete transaction Bundle](Bundle-RemoveRARecordExample.html) demonstates deleting the following resources

* [Patient Flag](Flag-RAPatientFlagExample1.html) example.  
* [Programme Flag](Flag-RAFlagExample1.html) example.  
* [Condition Flag](Condition-RAConditionExample1.html) example.  

