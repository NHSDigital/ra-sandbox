### Overview

For high level requirements, see [Key purposes of the Patient Flag](index.html#pf-key-purposes)

### Usecase

A Patient Flag Record may be retrieved if it exists.  It will be possible to determine that a adjustment flags exist by searching for a [Patient Flag](StructureDefinition-PatientFlag.html) with:

- [Programme Flags](StructureDefinition-ProgrammeFlag.html)
- [Programme Flags](StructureDefinition-ProgrammeFlag.html) with a category of [NRAF](CodeSystem-PatientFlagCategory.html#PatientFlagCategory-NRAF)
- or the code [NRAF](CodeSystem-PatientFlagCategory.html#PatientFlagCategory-NRAF), 

<div style="text-align: left;">

  {%include retrieve-pf-record-usecase.svg%}

</div>

### System Interaction

<div style="text-align: left;">

  {%include retrieve-pf-record-sequence.svg%}

</div>

### Queries

Using [FHIR search](https://www.hl7.org/fhir/search.html) capabilities, it is possible to retrieve the reasonable adjustment records in several ways.

#### Patient endpoint search 

This section describes how to query from the [Patient](http://www.hl7.org/fhir/R4/patient.html#search) endpoint using [FHIR search](https://www.hl7.org/fhir/search.html)

This will return all associated Flag resources for Patient Flag.

```
GET /PatientFlag?patient=9449306753
```

This limits the search to Flags for the patient that has the identifier `9449306753`

```
patient=9449306753
```


The following queries will return all or some of the resources constituing a Patient Flag record, i.e.

* [Patient Flag](StructureDefinition-PatientFlag.html) resources  
* Any Additional Supporting resources

This query relies on the [FlagCategory](SearchParameter-FlagCategory.html) and [FlagCode](SearchParameter-FlagCode.html) SearchParameters.

#### Flag endpoint search

This section describes how to query from the [Flag](http://www.hl7.org/fhir/R4/flag.html#search) endpoint using [FHIR search](https://www.hl7.org/fhir/search.html)

**NOTE:** For every additional record/resource added, the flag-detail element in the Patient Flag resource will need updated. See **TODO -- link to add interaction diagram**.

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


