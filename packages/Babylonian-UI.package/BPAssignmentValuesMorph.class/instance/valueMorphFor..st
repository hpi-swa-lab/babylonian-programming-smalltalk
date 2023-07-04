ui
valueMorphFor: traceValue
	
	| initialValueMorph previousValueMorph previousValueText |
	initialValueMorph := super valueMorphFor: traceValue.
	initialValueMorph addMorphFront: '|' asText asMorph.
	
	previousValueText := (traceValue previousValueOf: traceValue assignedVariableNames first) printString asText
		addAttribute: TextEmphasis struckOut;
		yourself.
	previousValueMorph := previousValueText asMorph. 
	initialValueMorph addMorphFront: previousValueMorph.
	
	^ initialValueMorph