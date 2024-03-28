### Overview

Patient consent must be established for information to be shared through the Reasonable Adjustment Flag or via a 'best interest decision' as per the [Mental Capacity Act (2005)](https://www.nhs.uk/conditions/social-care-and-support-guide/making-decisions-for-someone-else/mental-capacity-act/) – according to existing guidance and best practice. 

Any sharing of patient information must adhere to the [Caldicott Principles](https://www.gov.uk/government/publications/the-caldicott-principles)

In some cases consent can also be obtained from a lasting power of attorney for health and welfare, or a court appointed deputy. Consent is usually obtained by a suitable member of staff discussing the Reasonable Adjustment Flag with the patient, their carer or the appropriate patient representative. The member of staff will then record the type of consent captured, along with some free text details providing more information about who provided the consent.

As an example of best practice, existing guiduance using a 'best interest decision' can be found in the defintion for [consent to treatment](https://www.nhs.uk/conditions/consent-to-treatment). This describe cases where a patient advocate may provide consent when the patient [does not have the capacity to do so](https://www.nhs.uk/conditions/consent-to-treatment/capacity). 

### Use Case

As capacity can sometimes change over time, it should be assessed at the time that consent is required. This will usually be done by an appropriately trained and experienced healthcare professional (i.e. Practitioner) who's either:

* recommending the treatment or investigation
* involved in carrying it out

If the patient does not have the capacity to consent, then a patient advocate may provide consent for them.

<div style="text-align: left;">
  {%include consent-usecase.svg%}
</div>

#### Scenarios

[Gherkin Scenarios](consent-to-share-scenarios.html)

### Workflow

When consent or dissent is provided by the patient or their advocate, then this will be recorded in a [Consent](https://www.hl7.org/fhir/r4/consent.html) resource.  If there was previous consent to record adjustments, but the consent is then revoked, then all adjustment records must also be removed.

<div>
    <img style="max-width: 100%" alt="Consent workflow BPMN diagram." src="consent-to-treatment.svg"/>
</div>

### System Interactions

If consent is given either by the patient or the patient advocate, then this should be recorded.  A record of who obtained the consent must also be embedded in the Consent resource.  This will done using a contained provenance resource.  

If consent has not been previously given, then this means the Consent resource must be created.  If consent is revoked, then the Consent resource should be updated to reflect this and marked as inactive.  Any previous adjustment records that were recorded must be removed, including the patient flag and all adjustment flags and conditions.

<div style="text-align: left;">

{%include consent-sequence.svg%}

</div>

### Examples

* [Consent is given example](Consent-RAConsentExample1.html)

**TODO** - *these were not previous modelled in the terminology*

* [Consent is not given](Consent-RAConsentExampleDissent.html)
* [Consent is revoked](Consent-RAConsentExampleRevoked.html)

### Relevant Documentation

* FHIR [ReSTful API](https://www.hl7.org/fhir/R4/http.html)
