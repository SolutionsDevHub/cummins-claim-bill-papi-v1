%dw 2.0
output application/java
---
{
	"ESN__c": payload.esn,
	"ESN_Confidence__c": payload.esnConfidenceScore,
	("ECM_Start_Date__c": payload.startRepairDate as Date) if(!isEmpty(payload.startRepairDate)),
	"ECM_Start_Date_Confidence__c": payload.startRepairDateConfidenceScore,
	("ECM_End_Date__c": payload.lastModifiedDate as Date) if(!isEmpty(payload.lastModifiedDate)),
	"ECM_End_Date_Confidence__c": payload.lastModifiedDateConfidenceScore
} filterObject ((value, key) -> value != null)