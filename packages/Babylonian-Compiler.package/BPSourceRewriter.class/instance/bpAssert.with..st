rewrite rules
bpAssert: annotation with: originalExpressionSourceNode
	
	^ annotation instrumentationCallFor: (self value: originalExpressionSourceNode)