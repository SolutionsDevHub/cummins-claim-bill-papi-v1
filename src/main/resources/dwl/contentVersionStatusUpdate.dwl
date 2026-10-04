%dw 2.0
output application/json
---
[{
	"Id": vars.document.contentVersionId,
	("Status__c": vars.contentVersionStatus) if(!isEmpty(vars.contentVersionStatus)),
	("fieldsToNull": ["Status__c"]) if(isEmpty(vars.contentVersionStatus))
}]