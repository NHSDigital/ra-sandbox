### Summary

The RA record is made up of Consent, Condition, Flag and Provenances resources.  The Consent, Condition and Flag resources are linked via a Patient resource.  Provenance of all resources that make up an RA record must be stored.  This is modelled here as a contained resource, and as such has no lifetime outside of the constituent RA record resources.

### Data Model

#### Mermaid

Data model in Mermaid

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

#### PlantUML

Data model in PlantUML backtick

```plantuml
@startuml

skinparam linetype ortho

entity "Patient" as pat {
  *NHS Number : number <<generated>>
}

Package "Patient Flags API" {
entity "Consent" as con {
  *patient : Patient
  *category : CodeableConcept
  *contained : Provenance (Contained)
}

entity "Condition" as cod {
  *patient : Patient
  *code : CodeableConcept
  *category : CodeableConcept
  *contained : Provenance (Contained)
}

entity "Patient Flag" as pfg {
  *patient : Patient
  *code : CodeableConcept
  *category : CodeableConcept
  *contained : Provenance (Contained)
}

entity "Adjustment Flag" as adj {
  *patient : Patient
  *code : CodeableConcept
  *category : CodeableConcept
  *contained : Provenance (Contained)
}

entity "Provenance" as pro {
  *recorded : Date
  *agent : Agent (backbone)
}}

pat ||..|| con : provides
pat ||--o{ cod : has
pat ||--o| pfg : "has"
pat ||--o{ adj : has
con ||--|| pro : contains
cod ||--|| pro : contains
pfg ||--|| pro : contains
adj ||--|| pro : contains

@enduml

```

Data model in PlantUML div

  <div class="mermaid">
  @startuml

  skinparam linetype ortho

  entity "Patient" as pat {
    *NHS Number : number <<generated>>
  }

Package "Patient Flags API" {
  entity "Consent" as con {
    *patient : Patient
    *category : CodeableConcept
    *contained : Provenance (Contained)
  }

  entity "Condition" as cod {
    *patient : Patient
    *code : CodeableConcept
    *category : CodeableConcept
    *contained : Provenance (Contained)
  }

  entity "Patient Flag" as pfg {
    *patient : Patient
    *code : CodeableConcept
    *category : CodeableConcept
    *contained : Provenance (Contained)
  }

  entity "Adjustment Flag" as adj {
    *patient : Patient
    *code : CodeableConcept
    *category : CodeableConcept
    *contained : Provenance (Contained)
  }

  entity "Provenance" as pro {
    *recorded : Date
    *agent : Agent (backbone)
  }
}
  pat ||..|| con : provides
  pat ||--o{ cod : has
  pat ||--o| pfg : "has"
  pat ||--o{ adj : has
  con ||--|| pro : contains
  cod ||--|| pro : contains
  pfg ||--|| pro : contains
  adj ||--|| pro : contains
  
  
  @enduml

  </div>