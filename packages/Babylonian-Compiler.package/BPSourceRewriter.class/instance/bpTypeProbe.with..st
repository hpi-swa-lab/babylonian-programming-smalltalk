rewrite rules
bpTypeProbe: annotation with: originalExpressionSourceNode
	
	^ annotation instrumentationCallFor: (self value: originalExpressionSourceNode)