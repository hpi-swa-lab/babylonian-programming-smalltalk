private - ui
newValueMorph

	| morph |
	morph := traceValue belongingAnnotation isAssertion
		ifTrue: [self newAssertionValueMorph]
		ifFalse: [traceValue asValueMorph].
		
	morph on: #click send: #value to: [traceValue tracedValue explore];
			name: #bpSwimlaneValue.
	
	^ morph