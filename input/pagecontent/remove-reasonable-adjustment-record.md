### Overview

A patient may deny or revoke their consent to share adjustment or impairment information at any point. See [Consent to Share Information](consent-to-share-information.html) for details of requirements around consent.

For high level requirements, see [Key purposes of the Reasonable Adjustment Flag](index.html#key-purposes)   
 

#### UseCase

If a patient denys consent, then this must be recorded and all adjustment records should be removed.

<div style="text-align: left;">

  {%include remove-record-usecase.svg%}

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
  
A patient may revoke consent to share information about Reasonable Adjustment records and if they do, all records should be removed.

</p>

<div>
    <img style="max-width: 70%" alt="Activity created in draw.io!" src="remove-record-workflow.svg"/>
</div>

### System Interactions

<div style="text-align: left;">

  {%include remove-record-sequence.svg%}

</div>

The following resources will be removed from the record if consent is not granted i.e.

* [Flag Consent](StructureDefinition-FlagConsent.html) resource
* [Patient Flag](StructureDefinition-PatientFlag.html) resources  
* [Flag Condition](StructureDefinition-FlagCondition.html) resources 

#### Example

for the delete transaction example provided below, the following query will performed (dynamically during the IG build)

```
POST /
```

This query will delete the patient's RA record, i.e. the resources contained in the transaction.

* [Flag Consent](StructureDefinition-FlagConsent.html) resource
* [Patient Flag](StructureDefinition-PatientFlag.html) resources  
* [Flag Condition](StructureDefinition-FlagCondition.html) resources 

This will be the following Request body [Bundle transaction](Bundle-RemoveRARecordExample.html)
