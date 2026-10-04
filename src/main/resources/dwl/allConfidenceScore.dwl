%dw 2.0
output application/json
var confidenceScoreThreshold = p('confidenceScoreThreshold') as Number
---
(flatten((vars.confidenceScores) filter ((item, index) -> item.confidenceScore < confidenceScoreThreshold) map ((item, index) -> (item - "confidenceScore") pluck ((value, key, index) -> key)))) 