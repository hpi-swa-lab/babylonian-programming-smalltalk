private - ui
newLabelMorph

	"Only for other annotations than assertions:"
	^ (self newLabel) asMorph
		name: #lineName;
		on: #click send: #value to: [
			ToolSet 
				browse: self traceValue containedMethodReference actualClass 
				selector: self traceValue containedMethodReference methodSymbol];
		color: Color gray;
		yourself.