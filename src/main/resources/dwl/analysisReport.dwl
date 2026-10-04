%dw 2.0
output application/java
---
{
	"Equipment_Id__c": payload.equipmentID,
	"Equipment_Id_Confidence__c": payload.equipmentIDConfidenceScore,
	"Equipment_Sr_No__c": payload.equipmentSrNo,
	"Equipment_Sr_No_Confidence__c": payload.equipmentSrNoConfidenceScore,
	"Heading__c": payload.heading,
	"Heading_Confidence__c": payload.headingConfidenceScore,
	"Severity__c": payload.severity,
	"Severity_Confidence__c": payload.severityConfidenceScore,
	"Type_of_Sample__c": payload.typeOfSample,
	"Type_of_Sample_Confidence__c": payload.typeOfSampleConfidenceScore
} filterObject ((value, key) -> value != null)