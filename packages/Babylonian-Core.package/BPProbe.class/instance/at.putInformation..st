accessing
at: aKey putInformation: anObject
	
	^ aKey = #expression
		ifTrue: [
			(anObject isString 
				and: [anObject size >= 2]
				and: [(anObject copyFrom: 2 to: anObject size - 1) withBlanksTrimmed notEmpty]) 
					ifTrue: [self expression: anObject]
					ifFalse: [self expression: nil]]
		ifFalse: [super at: aKey putInformation: anObject]