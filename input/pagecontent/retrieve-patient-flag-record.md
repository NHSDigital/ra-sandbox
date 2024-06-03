### Overview

For high level requirements, see [Key purposes of the Patient Flag](index.html#key-purposes)

### Usecase

A Patient Flag Record may be retrieved if it exists.  It will be possible to determine that a adjustment flags exist by searching for a [Patient Flag](StructureDefinition-PatientFlag.html) with:

- [Programme Flags](StructureDefinition-ProgrammeFlag.html)
- [Programme Flags](StructureDefinition-ProgrammeFlag.html) with a category of [NRAF](CodeSystem-PatientFlagCategory.html#PatientFlagCategory-NRAF)
- or the code [NRAF](CodeSystem-PatientFlagCategory.html#PatientFlagCategory-NRAF), 

<div style="text-align: left;">

  {%include retrieve-pf-record-usecase.svg%}

</div>

#### Scenarios

```gherkin
Given a practitioner must access a patients reasonable adjustment records
And consent has been provided
When the practitioner retrieves the reasonable adjustment records
Then all resources associated with reasonable adjustment records will be returned

Given a practitioner must access a patients reasonable adjustment records
And no consent has been provided
When the practitioner attempts to retrieve the reasonable adjustment records
Then no resources will be returned

Given a practitioner must access a patients reasonable adjustment records
And consent is revoked
When the practitioner updates the Consent resource to revoked
Then all other resources associated with reasonable adjustment records will be removed
```

### Workflow

A practitioner confirms that a patient consents to share information about Reasonable Adjustment records.  A patient may revoke consent to share information about Reasonable Adjustment records and if they do, all records must be removed.

<div>
    <img style="max-width: 70%" alt="Retrieve Patient Flag record workflow BPMN diagram." src="retrieve-pf-record-workflow.svg"/>
</div>

### System Interaction

<div style="text-align: left;">

  {%include retrieve-pf-record-sequence.svg%}

</div>

### Queries

Using [FHIR search](https://www.hl7.org/fhir/search.html) capabilities, it is possible to retrieve the reasonable adjustment records in several ways.

#### Patient endpoint search 

This section describes how to query from the [Patient](http://www.hl7.org/fhir/R4/patient.html#search) endpoint using [FHIR search](https://www.hl7.org/fhir/search.html)

This will return all associated flag resources for Reasonable Adjustments.

```
GET /Patient?identifier=9912003888&_has:Flag:patient:code=NRAF&_has:Flag:patient:category=NRAF&_revinclude=Flag:patient&_has:Consent:patient:category=NRAF&_revinclude=Consent:patient&_has:Condition:patient:category=NRAF&_revinclude=Condition:patient 
```

This limits the search to patients thant have the identifier `9912003888`

```
identifier=9912003888
```

This limits the search to patients that have Flag resources linked via patient and have the code NRAF, and also includes the resource in the returned searchset Bundle.

```
&_has:Flag:patient:code=NRAF&_revinclude=Flag:patient
```

This limits the search to patients that have Flag resources linked via patient and have the category NRAF, and also includes the resource in the returned searchset Bundle.

```
&_has:Flag:patient:category=NRAF&_revinclude=Flag:patient
```

This limits the search to patients that have Consent resources linked via patient and have the category NRAF, and also includes the resource in the returned searchset Bundle.

```
&_has:Consent:patient:category=NRAF&_revinclude=Consent:patient
```

This limits the search to patients that have Condition resources linked via patient and have the category NRAF, and also includes the resource in the returned searchset Bundle.

```
&_has:Condition:patient:category=NRAF&_revinclude=Condition:patient
```

The following queries will return all or some of the resources constituing a Reasonable Adjustments record, i.e.

* [Flag Consent](StructureDefinition-FlagConsent.html) resource
* [Patient Flag](StructureDefinition-PatientFlag.html) resources  
* [Programme Flag](StructureDefinition-ProgrammeFlag.html) resources
* [Flag Condition](StructureDefinition-FlagCondition.html) resources 

This query relies on the [FlagCategory](SearchParameter-FlagCategory.html) and [FlagCode](SearchParameter-FlagCode.html) SearchParameters.

#### Flag endpoint search

This section describes how to query from the [Flag](http://www.hl7.org/fhir/R4/flag.html#search) endpoint using [FHIR search](https://www.hl7.org/fhir/search.html)

**NOTE:** For every additional record/resource added, the flag-detail element in the Patient Flag resource will need updated. See **TODO -- link to add interaction diagram**.

<div id="todo-notice" markdown="span" class="alert alert-danger" role="alert">
  <i class="fa fa-tasks"></i>
  <b>TODO: </b>
  <i>Update all interaction diagrams that either add or remove records. Also add new specific diagrams for adding an additional record or removing a single record from a set, where the flag extension then needs updated :(</i>
</div>

If the [flag-detail extension](http://hl7.org/fhir/StructureDefinition/flag-detail) is used, then references to all Reasonable Adjustment resources can be included the [Patient Flag](StructureDefinition-PatientFlag.html) resource.

This will return all associated flag resources for Reasonable Adjustments.

```
http://localhost:8080/fhir/Flag?patient.identifier=9912003888&_include=Flag:detail&_include=Flag:patient
```

This limits the search to patients thant have the identifier `9912003888`

```
patient.identifier=9912003888=9912003888
```

This includes all references in the flag detail extension that have been defined in the [FlagDetail](SearchParameter-FlagDetail.html) SearchParameter.

```
&_include=Flag:detail
```

This includes the associated patient resource.

```
&_include=Flag:patient
```

This query relies on the [FlagCategory](SearchParameter-FlagCategory.html), [FlagCode](SearchParameter-FlagCode.html) and [FlagDetail](SearchParameter-FlagDetail.html) SearchParameters.


### Relevant Documentation

* FHIR [Search](http://www.hl7.org/fhir/R4/search.html)
* [SearchParameters](https://www.hl7.org/fhir/R4/searchparameter.html)