serialization
startTag
	
	| label expression |
	label := self hasLabel 
		ifTrue: [' label: ''{1}''' format: {self label}]
		ifFalse: [''].
	expression := self hasExpression 
		ifTrue: [' expression: {1}' format: {self expression}] 
		ifFalse: [''].
	
	^ '"<{4} id: {1}{2}{3}>"' format: {self id . label . expression . self probeTypeTag}
	