private - ui
newValueMorphFor: aTraceValue

	| morph |
	morph := aTraceValue belongingAnnotation isAssertion
		ifTrue: [self newAssertionValueMorphFor: aTraceValue]
		ifFalse: [aTraceValue asValueMorph].
		
	morph on: #click send: #value to: [aTraceValue tracedValue explore].
	
	^ morph