%dw 2.0
output application/java
---
(vars.tables map((item, index) -> {
	"File_Data_Staging__c": vars.idpFileDataStagingResponse.items[0].id,
	("Failure_Date__c": item.failureDate as Date) if(!isEmpty(item.failureDate)),
	"Failure_Date_Confidence__c": item.failureDateConfidenceScore,
	"Item_Description__c": item.itemDescription,
	"Item_Description_Confidence__c": item.itemDescriptionConfidenceScore,
	"Item_Name__c": item.itemName,
	"Item_Name_Confidence__c": item.itemNameConfidenceScore,
	"Nature_Of_Service__c": item.natureOfService,
	"Nature_Of_Service_Confidence__c": item.natureOfServiceConfidenceScore,
	"Problem_Description__c": item.problemDescription,
	"Problem_Description_Confidence__c": item.problemDescriptionConfidenceScore,
	("Quantity__c": (item.quantity replace "," with "") as Number) if(!isEmpty(item.quantity)),
	"Quantity_Confidence__c": item.quantityConfidenceScore,
	"SON_No__c": item.sonNumber,
	"SON_No_Confidence__c": item.sonNumberConfidenceScore,
	"Summary_Resolution__c": item.summaryResolution,
	"Summary_Resolution_Confidence__c": item.summaryResolutionConfidenceScore,
	("Unit_Price__c": (item.unitPrice replace "," with "") as Number) if(!isEmpty(item.unitPrice)),
	"Unit_Price_Confidence__c": item.unitPriceConfidenceScore
})) map ((item, index) -> item filterObject ((value, key, index) -> !isEmpty(value)))