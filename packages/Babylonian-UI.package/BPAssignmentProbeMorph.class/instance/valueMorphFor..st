private
valueMorphFor: traceValue
	
	| initialValueMorph previousValueMorph |
	initialValueMorph := super valueMorphFor: traceValue.
	initialValueMorph addMorphFront: '|' asText asMorph.
	
	previousValueMorph := (traceValue previousValueOf: traceValue assignedVariableNames first) printString asText asMorph.
	initialValueMorph addMorphFront: previousValueMorph.
	
	^ initialValueMorph