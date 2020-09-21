serialization
startTag
	
	^ self hasExpression
		ifFalse: ['"<bpProbe id: {1}>"' format: {self id}]
		ifTrue: ['"<bpProbe id: {1} expression: {2}>"' format: {self id . self expression}]