rewrite rules
bpProbe: annotation with: originalExpressionSource

	^ '(self bpTrace: ({1}) forId: {2} forExpression: ''{1}'' inContext: thisContext)' 
		format: {originalExpressionSource . self nextProbeId}