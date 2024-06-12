### Overview

For high level requirements, see [Key purposes of the FGM Flag](index.html#fgm-key-purposes)
 

#### UseCase

<div style="text-align: left;">

  {%include remove-fgm-record-usecase.svg%}

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
    <img style="max-width: 70%" alt="Remove FGM Flag record workflow BPMN diagram." src="remove-fgm-record-workflow.svg"/>
</div>

### System Interactions

<div style="text-align: left;">

  {%include remove-fgm-record-sequence.svg%}

</div>


#### Example

### Relevant Documentation

