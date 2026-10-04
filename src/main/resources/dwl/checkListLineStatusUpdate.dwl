%dw 2.0
output application/json
---
[{
	"Id": vars.document.checklistLineId,
	"Processing_Status__c": vars.checkListLineStatus
}]