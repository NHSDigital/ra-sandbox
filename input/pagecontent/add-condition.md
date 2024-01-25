
### Summary

<p>Patient wishes to record Consent. Practitioner records Consent information</p>    

#### Workflow

##### Draw.io  

<div>
    <img style="max-width: 70%" alt="Activity created in draw.io!" src="add-condition.drawio.png"/>
</div>

##### PlantUML  

<p>{% include add-condition.svg %}</p>  

#### Condition Recorded  

##### Draw.io

<p>Pre-condition: Patient details have been retrieved/validated</p>   

<div>
    <img style="max-width: 70%" alt="Activity created in draw.io!" src="condition-recorded-sequence.drawio.png"/>
</div>

##### PlantUML

<p>{% include record-condition.svg %}</p>  

#### Example 1  

[Single Condition POST](StructureDefinition-Extension-England-FlagRemovalReason.html)  

#### Example 2  

<p>
This will create all conditions and fail if any one fails.  
</p>

[Multiple Condition POST - Transaction](StructureDefinition-Extension-England-FlagRemovalReason.html).  

<p>
This will update (and optionally create) all conditions and fail if any one fails.  
</p>

[Multiple Condition PUT - Transaction](StructureDefinition-Extension-England-FlagRemovalReason.html)  

<p>
This will create all conditions and if any fail, individual OperationOutcomes will be returned.  
</p>

[Multiple Condition POST - Batch](StructureDefinition-Extension-England-FlagRemovalReason.html)  

<p>
This will update (and optionally create) all conditions and if any fail, individual OperationOutcomes will be returned.  
</p>

[Multiple Condition PUT - Batch](StructureDefinition-Extension-England-FlagRemovalReason.html)  

<p>
More information on 
</p>

### Relevant Documentation

[Bundles](https://hl7.org/fhir/r4/bundle.html)  
[Transactions](https://hl7.org/fhir/r4/http.html#transaction)  
[Upsert](https://hl7.org/fhir/r4/http.html#upsert)  
