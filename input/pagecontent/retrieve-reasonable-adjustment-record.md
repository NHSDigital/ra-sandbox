### Overview

Patient consent must be obtained before retrieving any adjustment or impairment.  See [Consent to Share Information](consent-to-share-information.html) for details of requirements around consent.

For high level requirements, see [Key purposes of the Reasonable Adjustment Flag](index.html#key-purposes)   

### Usecase

After obtaining consent from a patient, a Reasonable Adjustment Record may be retrieved if it exists.  It will be possible to determine that a adjustment flags exist by searching for a [Patient Flag](StructureDefinition-PatientFlag.html) with the code [NRAF](CodeSystem-PatientFlagCategory.html#PatientFlagCategory-NRAF), or [Programme Flags](StructureDefinition-ProgrammeFlag.html) with a category of [NRAF](CodeSystem-PatientFlagCategory.html#PatientFlagCategory-NRAF).

<div style="text-align: left;">

  {%include retrieve-record-usecase.svg%}

</div>

### Workflow

A practitioner confirms that a patient consents to share information about Reasonable Adjustment records.  A patient may revoke consent to share information about Reasonable Adjustment records and if they do, all records must be removed.

<div>
    <img style="max-width: 70%" alt="Activity created in draw.io!" src="retrieve-record-workflow.svg"/>
</div>

### System Interactions

Using [FHIR search](https://www.hl7.org/fhir/search.html) capabilities, it is possible to retrieve the reasonable adjustment records in several ways.

#### General query interaction

<div style="text-align: left;">

  {%include retrieve-record-usecase.svg%}

</div>

The following queries will return all or some of the resources constituing a Reasonable Adjustments record, i.e.

* [Flag Consent](StructureDefinition-FlagConsent.html) resource
* [Patient Flag](StructureDefinition-PatientFlag.html) resources  
* [Programme Flag](StructureDefinition-ProgrammeFlag.html) resources
* [Flag Condition](StructureDefinition-FlagCondition.html) resources 

All queries rely on the [FlagCategory](SearchParameter-FlagCategory.html) and [FlagCode](SearchParameter-FlagCode.html) SearchParameters.

#### Patient endpoint search 

This will return all resources associated flag resources for a patient

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

#### Flag endpoint search using flag-detail extension

If the [flag-detail extension](http://hl7.org/fhir/StructureDefinition/flag-detail) is used, then references to all Reasonable Adjustment resources can be included the [Patient Flag](StructureDefinition-PatientFlag.html) resource.

**NOTE:** For every additional record/resource added, the flag-detail element in the Patient Flag resource will need updated.

**TODO:** add this into the add record interaction diagram :(

The following query relies on the [FlagDetail](SearchParameter-FlagDetail.html) SearchParameter.

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

### Relevant Documentation

[FHIR Search](http://www.hl7.org/fhir/R4/search.html)