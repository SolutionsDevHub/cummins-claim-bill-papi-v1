%dw 2.0
output application/json
var confidenceScoreThreshold = p('confidenceScoreThreshold') as Number
var exceptionConfidenceScoreThreshold = p('exceptionConfidenceScoreThreshold') as Number
var exceptionFields = vars.confidenceScores filter ((item) -> item.failedComponentPhotographs? or item.problemStatus? or item.customerSignature? or item.customerStamp?)
---
(flatten(((vars.confidenceScores -- exceptionFields)) filter ((item, index) -> item.confidenceScore < confidenceScoreThreshold) map ((item, index) -> (item - "confidenceScore") pluck ((value, key, index) -> key)))) ++ 

(flatten((exceptionFields) filter ((item, index) -> item.confidenceScore < exceptionConfidenceScoreThreshold) map ((item, index) -> (item - "confidenceScore") pluck ((value, key, index) -> key))))