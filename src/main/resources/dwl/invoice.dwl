%dw 2.0
output application/java
---
{
	"Invoice_Number__c": payload.invoiceNumber,
	"Invoice_Number_Confidence__c": payload.invoiceNumberConfidenceScore,
	("Invoice_Date__c": payload.invoiceDate as Date) if(!isEmpty(payload.invoiceDate)),
	"Invoice_Date_Confidence__c": payload.invoiceDateConfidenceScore,
}  filterObject ((value, key) -> value != null)