%dw 2.0
output application/json
---
(vars.task default [] ++ [{
	"fileName": vars.document.fileName,
	"message": vars.contentVersionMessage
}]) filter ((item, index) -> !isEmpty(item.message))
