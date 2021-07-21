private - ui
newLabelMorphFor: aTraceValue
	
	^ (self newLabelFor: aTraceValue) asMorph
		name: #lineName;
		on: #click send: #value to: [
			ToolSet 
				browse: aTraceValue containedMethodReference actualClass 
				selector: aTraceValue containedMethodReference methodSymbol];
		color: Color gray;
		yourself
		