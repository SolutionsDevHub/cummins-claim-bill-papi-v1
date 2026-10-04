%dw 2.0
output application/java
---
{
	"Customer_Signature__c": if ( upper(payload.customerSignature) =="YES" ) true else false,
	"Customer_Signature_Confidence__c": payload.customerSignatureConfidenceScore,
	"Delivery_Challan_No__c": payload.deliveryChallanNumber,
	"Delivery_Challan_No_Confidence__c": payload.deliveryChallanNumberConfidenceScore,
} filterObject ((value, key) -> value != null)
