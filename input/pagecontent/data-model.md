### Patient Flag Data Model

A Patient Flag API record is made up of a Flag resource and any other 'detail' resources that are provided as part of the Flag record in the specific domain 

<div style="text-align: left;">
  {%include patflg-data-model.svg%}
</div>

### Reasonable Adjustments

The RA record is made up of Flag, Provenance and Condition resources.  

The presence of and entitlement to reasonable adjustments is represented by a PatientFlag resource. It can be interpreted as meaning 'this patient has reasonable adjustments'.

Individual adjustments are represented as ProgrammeFlag resource instances. They can be interpreted as meaning e.g.'this patient requires Easy read'

Patients may optionally request details of underlying conditions are recorded and shared where this enhances healthcare. These are represented as FlagCondition resources

Provenance of all resources that make up an RA record must be stored.  This is modelled here as a contained resource, and as such has no lifetime outside of the constituent RA record resources.


<div style="text-align: left;">
  {%include ra-data-model.svg%}
</div>

### Female Genital Mutilation

The FGM record is made up of a Flag resource.

<div style="text-align: left;">
  {%include fgm-data-model.svg%}
</div
