### Summary

The RA record is made up of Consent, Condition, Flag and Provenances resources.  The Consent, Condition and Flag resources are linked via a Patient resource.  Provenance of all resources that make up an RA record must be stored.  This is modelled here as a contained resource, and as such has no lifetime outside of the constituent RA record resources.

### Data Model

<div class="mermaid">
erDiagram
  Patient {
    NHS-number identifier
  }
  Consent {
    patient Patient
    category CodeableConcept
    contained Provenance
  }
  Condition {
    patient Patient
    code CodeableConcept
    category CodeableConcept
    contained Provenance
  }
  PatientFlag {
    patient Patient
    code CodeableConcept
    category CodeableConcept
    contained Provenance
  }
  ProgrammeFlag {
    patient Patient
    code CodeableConcept
    category CodeableConcept
    contained Provenance
  }
  Provenance {
    recorded DateTime
    agent Agent
  }

  Patient ||..|| Consent : provides
  Patient ||--o{ Condition : has
  Patient ||--o| PatientFlag : has
  Patient ||--o{ ProgrammeFlag : has

  Consent ||--|| Provenance : contains
  Condition ||--|| Provenance : contains
  PatientFlag ||--|| Provenance : contains
  ProgrammeFlag ||--|| Provenance : contains
</div>