rewrite rules
bpReplace: annotation with: originalExpressionSourceNode
	
	^ annotation instrumentationCallFor: (self value: originalExpressionSourceNode)