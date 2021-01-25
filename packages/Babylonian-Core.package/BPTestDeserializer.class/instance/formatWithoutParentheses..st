accessing
formatWithoutParentheses: aNode

	| code |
	
	code := aNode formattedCode.
	^ aNode hasParentheses ifTrue: [code copyFrom: 2 to: code size - 1] ifFalse: [code]