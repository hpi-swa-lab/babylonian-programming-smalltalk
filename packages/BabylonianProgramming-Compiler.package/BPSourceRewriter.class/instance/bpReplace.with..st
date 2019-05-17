rewrite rules
bpReplace: annotation with: originalExpressionSource

	^ (annotation includesKey: #for) 
		ifTrue: ['(self bpReplace: [{1}] with: {2} for: {3})' 
			format: {originalExpressionSource . annotation at: #with . annotation at: #for }]
		ifFalse: ['(self bpReplace: [{1}] with: {2})' 
			format: {originalExpressionSource . annotation at: #with }]