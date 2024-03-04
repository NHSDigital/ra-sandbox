### Overview

[Consent to treatment](https://www.nhs.uk/conditions/consent-to-treatment) should be given by the patient or via a 'best interest decision' under the [Mental Capacity Act (2005)](https://www.nhs.uk/conditions/social-care-and-support-guide/making-decisions-for-someone-else/mental-capacity-act/).  A patient advocate may provide consent when the patient [does not have the capacity to do so](https://www.nhs.uk/conditions/consent-to-treatment/capacity/). 

In some cases consent can also be obtained from a lasting power of attorney for health and welfare, or a court appointed deputy. Consent is usually obtained by a suitable member of staff discussing the Reasonable Adjustment Flag with the patient, their carer or the appropriate patient representative. The member of staff will then record the type of consent captured, along with some free text details providing more information about who provided the consent.

### Use Case Illustration

As capacity can sometimes change over time, it should be assessed at the time that consent is required.

This will usually be done by an appropriately trained and experienced healthcare professional (i.e. Practitioner) who's either:

* recommending the treatment or investigation
* involved in carrying it out

If the patient does not have the capacity to consent, then a patient advocate may provide consent for them.

<div style="text-align: left;">

{%include consent-usecase.svg%}

</div>

### Workflow Illustration

If consent is not given, then this will be recorded.  If there was previous consent to record adjustments, but the consent is then revoked, then all adjustment records must also be removed.

<!--
#### Activty diagram (plantuml)

<div style="text-align: left;">

{%include consent-activity.svg%}

</div>

#### BPMN (bpmn.io / BPMN 2.0)
-->

<div>
    <img style="max-width: 100%" alt="Activity created in draw.io!" src="consent-to-treatment.svg"/>
</div>

### System Interactions

If consent is given either by the patient or the patient advocate, then this should be recorded.  As part of the record, a contained record of who obtained the consent must be embedded in the Consent resource.  If consent has not been previously given, then this means the Consent resource must be created, otherwise the Consent resource should be updated at the very least to include the date and details of who obtained the consent.

If consent has not been given, or is being revoked, then this again should be recorded using the Consent resource with details of who obtained the consent.  In addition to this, all previous adjustment records must be deleted, including the master flag and all adjustment flags and conditions.

<div style="text-align: left;">

{%include consent-sequence.svg%}

</div>

### Examples

* [Consent is given example](Consent-ConsentExample1.html)
* Consent is not given -- **TODO**
* Consent is revoked -- **TODO**
* Consent is given after being revoked -- **maybe TODO**