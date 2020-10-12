private
valueMorphFor: traceValue
	
	| morph |
	morph := traceValue tracedValue bpProbeValueMorphIn: traceValue.
	morph on: #click send: #value to: [traceValue tracedValue explore].
	^ morph 