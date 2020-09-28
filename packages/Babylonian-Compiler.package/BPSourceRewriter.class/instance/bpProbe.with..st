rewrite rules
bpProbe: annotation with: originalExpressionSourceNode
	
	^ annotation instrumentationCallFor: (self value: originalExpressionSourceNode)