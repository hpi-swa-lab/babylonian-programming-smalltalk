grammar rules
value: stringOrNode

	^ stringOrNode isString 
		ifTrue: [stringOrNode]
		ifFalse: [super value: stringOrNode]