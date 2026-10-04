%dw 2.0
output application/json
---
[{
	"Description": write(vars.task,"application/json"),
	"OwnerId": vars.triggeringUserId,
	"Priority": p('task.priority'),
	"RecordTypeId": p('task.recordTypeId'),
	"Status": p('task.status'),
	"Subject": p('task.subject'),
	"WhatId": vars.claimId
}]