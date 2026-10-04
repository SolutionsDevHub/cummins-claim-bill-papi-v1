%dw 2.0
output application/json
---
[{
	"Claim_Submitted__c": if ( !isEmpty(vars.taskStatus) or !isEmpty(vars.failureReason) ) false else true,
	("Failure_Reason__c": write(vars.failureReason,"application/json")) if(!isEmpty(vars.failureReason)),
	"Id": vars.claimId,
	"Submission_Status__c": if ( !isEmpty(vars.taskStatus) or !isEmpty(vars.failureReason) ) "Failed" else "Success",
	"dmpl__Status__c": if ( !isEmpty(vars.taskStatus) or !isEmpty(vars.failureReason) ) "Reverted" else "Claim in Progress"
}]


