### Summary

<p>Practioner wishes to read/retrieve RA Record</p>    

#### Workflow
<p>
A patient presents to be examined by a practitioner. The practitioner perofrms an examination and retrieve Patient's RA Record.

</p>

<div>
    <img style="max-width: 70%" alt="Activity created in draw.io!" src="retrieve-condition-workflow.drawio.png"/>
</div>

##### Patient's RA Record Retrieved

<div>
    <img style="max-width: 70%" alt="Patient's RA Record Retrieved" src="retrieve-condition-interaction.drawio.png"/>
</div>

#### Example  

For each transaction example provided in the previous section, the following query will performed (dynamically during the IG build)  

```
GET /Patient?identifier=9912003888&_revinclude=Consent:patient&_revinclude=Flag:patient&_revinclude=Condition:patient  
```

This query will return the Patient resource using the patients NHS number (<span style="background-color: #FFFF00">TODO will be profiled to check for this, reference this later</span>).  The assocaited resources that make up the RA Record are also returned, such as  
* Consent resources (<span style="background-color: #FFFF00">maybe link to profiles here</span>)  
* Flag resources  
* Condition resources  
which are all returned using default Patient SearchParameters (defined in the base specification).   

First Bundle example:  
* [Bundle transaction](Bundle-AddConditionTransactionExample1.html)
* [Query output](Bundle-QUERY-OUTPUT--0005-add-condition-transaction-example.html)  

Second Bundle example:  
* [Bundle transaction](Bundle-AddConditionTransactionExample2.html)  
* [Query output](Bundle-QUERY-OUTPUT--0006-add-condition-transaction-example.html)  

