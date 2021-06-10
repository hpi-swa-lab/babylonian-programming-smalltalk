private
valueMorphFor: traceValue
	
	| morph |
	morph := traceValue asValueMorph.
	morph on: #click send: #value to: [traceValue tracedValue explore].
	^ morph 