rewrite rules
bpProbe: annotation with: originalExpressionSource

	^ '(self bpTrace: ({1}) forId: {2} inContext: thisContext)' 
		format: {originalExpressionSource . self nextProbeId}