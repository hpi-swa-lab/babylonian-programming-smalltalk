accessing
formatWithoutParentheses: aNode
	
	| code hasParentheses|
	
	code := aNode formattedCode.
	hasParentheses := (code beginsWith: '(') and: [code endsWith: ')'].
	^ hasParentheses ifTrue: [code copyFrom: 2 to: code size - 1] ifFalse: [code]