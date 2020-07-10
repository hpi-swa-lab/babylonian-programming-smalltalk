private
valueTextFor: traceValue

	| previousValueText valueText |
	traceValue traceHasFailedBefore ifTrue: [^ super valueTextFor: traceValue].
	previousValueText := (traceValue previousValueOf: traceValue assignedVariableNames first) printString asText.
	previousValueText addAttribute: TextEmphasis struckOut.
	valueText := super valueTextFor: traceValue.
	^ Text streamContents: [:str |
		str 
			<< previousValueText;
			<< '|' asText;
			<< valueText]
	
	
	