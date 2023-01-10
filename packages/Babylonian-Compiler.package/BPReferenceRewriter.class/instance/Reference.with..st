as yet unclassified
Reference: aNode with: identifier

	^ (argumentNames includes: identifier interval contents asSymbol)
		ifTrue: [self value: identifier]
		ifFalse: ['(self bpResolveReferenceDynamically: #' , identifier interval contents , ' in: thisContext)']