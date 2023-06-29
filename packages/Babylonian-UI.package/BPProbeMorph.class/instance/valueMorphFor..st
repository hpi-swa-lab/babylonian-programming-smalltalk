private
valueMorphFor: traceValue
	
	| valueMorph |
	valueMorph := traceValue asValueMorph.
	valueMorph on: #click send: #value to: [traceValue tracedValue explore].
	^ valueMorph