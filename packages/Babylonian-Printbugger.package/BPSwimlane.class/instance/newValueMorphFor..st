private - ui
newValueMorphFor: aTraceValue

	| morph |
	morph := aTraceValue asValueMorph.
	morph on: #click send: #value to: [aTraceValue tracedValue explore].
	^ morph 