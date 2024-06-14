### Overview

A patient may deny or revoke their consent to share adjustment or impairment information at any point. See [Consent to Share Information](consent-to-share-information.html) for details of requirements around consent.

For high level requirements, see [Key purposes of the Reasonable Adjustment Flag](index.html#ra-key-purposes)   
 

#### UseCase

If a patient denys consent, then this must be recorded and all adjustment records must be removed.

<div style="text-align: left;">

  {%include remove-ra-record-usecase.svg%}

</div>

### System Interactions

In the following sequence diagram, a patient revokes consent.  The Consent resource is updated to reflect the patient dissent, and all adjustment records are deleted.

<div style="text-align: left;">

  {%include remove-ra-record-sequence.svg%}

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