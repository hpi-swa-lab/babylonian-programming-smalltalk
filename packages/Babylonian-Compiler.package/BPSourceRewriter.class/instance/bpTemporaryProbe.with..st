rewrite rules
bpTemporaryProbe: annotation with: originalExpressionSourceNode
	
	^ annotation instrumentationCallFor: (self value: originalExpressionSourceNode)