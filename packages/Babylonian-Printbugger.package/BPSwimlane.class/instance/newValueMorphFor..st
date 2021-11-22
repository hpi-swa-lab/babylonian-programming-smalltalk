private - ui
newValueMorphFor: aTraceValue

	| morph |
	morph := aTraceValue belongingAnnotation isAssertion
		ifTrue: [(aTraceValue tracedValue ifTrue: [ToolIcons testGreen] ifFalse: [ToolIcons testOrange]) asMorph.]
		ifFalse: [aTraceValue asValueMorph].
	morph on: #click send: #value to: [aTraceValue tracedValue explore].
	^ morph 