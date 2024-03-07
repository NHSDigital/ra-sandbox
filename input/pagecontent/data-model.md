### Summary

The RA record is made up of Consent, Condition, Flag and Provenances resources.  The Consent, Condition and Flag resources are linked via a Patient resource.  The Provenace resource is only scoped to a sinle Flag and has no lifetime outside of the Flag (specific version) resource.

### Data Model

<div>
    <img style="max-width: 70%" alt="RA Record Data Model" src="data-model-contained-provenance.drawio.png"/>
</div>

<div class="mermaid">
erDiagram

  Patient ||..|| Consent : provides
  Patient ||--o{ Condition : has
  Patient ||--o| "Patient Flag" : "has"
  Patient ||--o{ "Adjustment Flag" : has

  Consent ||--|| Provenance : contains
  Condition ||--|| Provenance : contains
  "Patient Flag" ||--|| Provenance : contains
  "Adjustment Flag" ||--|| Provenance : contains
</div>

<div style="text-align: left;">

{%include data-model.svg%}

</div>