private
valueMorphFor: traceValue trace: trace
	
	| initialValueMorph previousValueMorph |
	initialValueMorph := super valueMorphFor: traceValue trace: trace.
	initialValueMorph addMorphFront: '|' asText asMorph.
	
	previousValueMorph := (traceValue previousValueOf: traceValue assignedVariableNames first) printString asText asMorph.
	initialValueMorph addMorphFront: previousValueMorph.
	
	^ initialValueMorph