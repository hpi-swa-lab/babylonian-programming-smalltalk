rewrite rules
bpReplace: annotation with: originalExpressionSource

	^ '(self bpReplace: [{1}] with: {2} for: {3})' 
		format: {originalExpressionSource . annotation at: #with . annotation at: #for }