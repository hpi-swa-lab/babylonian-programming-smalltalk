rewrite rules
bpProbe: annotation with: originalExpressionSource

	^ '(self bpTrace: [{1}] forProbe: {2} inContext: thisContext)' 
		format: {originalExpressionSource . annotation id}