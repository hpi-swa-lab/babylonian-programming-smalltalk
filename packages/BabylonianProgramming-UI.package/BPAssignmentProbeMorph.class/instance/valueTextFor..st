private
valueTextFor: traceValue

	| previousValueText valueText |
	previousValueText := (traceValue previousValueOf: traceValue assignedVariableNames first) printString asText.
	previousValueText addAttribute: TextEmphasis struckOut.
	valueText := super valueTextFor: traceValue.
	^ Text streamContents: [:str |
		str 
			<< previousValueText;
			<< '|' asText;
			<< valueText]
	
	
	