private
valueMorphFor: traceValue trace: aTrace
	
	| initialValueMorph previousValueMorph |
	initialValueMorph := super valueMorphFor: traceValue trace: aTrace.
	initialValueMorph addMorphFront: '|' asText asMorph.
	
	previousValueMorph := (traceValue previousValueOf: traceValue assignedVariableNames first) printString asText asMorph.
	initialValueMorph addMorphFront: previousValueMorph.
	
	^ initialValueMorph