private - ui
newLineNameMorphFor: aTraceValue
	
	^ (self newNameFor: aTraceValue) asMorph
		name: #lineName;
		on: #click send: #value to: [
			ToolSet 
				browse: aTraceValue containedMethodReference actualClass 
				selector: aTraceValue containedMethodReference methodSymbol];
		yourself
		