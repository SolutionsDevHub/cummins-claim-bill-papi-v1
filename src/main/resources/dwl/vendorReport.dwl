%dw 2.0
output application/java
---
{
	"Claim_No__c": payload.claimNumber,
	"Claim_No_Confidence__c": payload.claimNumberConfidenceScore,
	"ESN__c": payload.esn,
	"ESN_Confidence__c": payload.esnConfidenceScore,
	"Service_Order_Number__c": payload.serviceOrderNumber,
	"Service_Order_Number_Confidence__c": payload.serviceOrderNumberConfidenceScore,
	"Vendor_Name_Logo__c": if ( upper(payload.vendorName) == "YES" ) true else false,
	"Vendor_Name_Logo_Confidence__c": payload.vendorNameConfidenceScore,
	"Vendor_Report_Claim_Status__c": payload.claimStatus,
	"Vendor_Report_Claim_Status_Confidence__c": payload.claimStatusConfidenceScore,
	("Vendor_Report_Date__c": payload.date as Date) if(!isEmpty(payload.date)),
	"Vendor_Report_Date_Confidence__c": payload.dateConfidenceScore,
	"Vendor_Report_Dealership_Name__c": payload.dealershipName,
	"Vendor_Report_Dealership_Name_Confidence__c": payload.dealershipNameConfidenceScore,
} filterObject ((value, key) -> value != null)