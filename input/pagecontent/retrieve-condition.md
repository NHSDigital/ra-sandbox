### Summary

<p>Practioner wishes to read/retrieve RA Record</p>    

#### Workflow
<p>
A patient presents to be examined by a practitioner. The Practioner perofrms an examination and retrieve Patient's RA Record.
</p>

<div>
    <img style="max-width: 70%" alt="Activity created in draw.io!" src="retrieve-condition1.drawio.png"/>
</div>

##### Condition Retrieved

<div>
    <img style="max-width: 70%" alt="Activity created in draw.io!" src="Retrieve-Condition.drawio.png"/>
</div>

#### Example  

Below Listed some example of the retrieval of RA Record :

Based on the example transaction Bundles given in the use case [Add RA Record](add-ra-record.html#workflow), for each transaction, the following query will performed (dynamically during the IG build)  

```
<base>/Patient?identifier=9912003888&_revinclude=Consent:patient&_revinclude=Flag:patient&_revinclude=Condition:patient  
```

This query will return the Patient resource using the patients NHS number.  The assocaited resources that make up the RA are also returned, which are all using default Patient SearchParameters define in the base specification for each resource.   

For the [first transaction example](Bundle-0001-add-condition-transaction-example.html), this is the [output of the query](Bundle-QUERY-OUTPUT--0001-add-condition-transaction-example.1.html).  

For the [second transaction example](Bundle-0002-add-condition-transaction-example.html), where a Condition and adjustment (Flag) is added, this is the [output of the query](Bundle-QUERY-OUTPUT--0002-add-condition-transaction-example.2.html).  

See the [Data Model](data-model.html) for details on the relationships between the resources.  
