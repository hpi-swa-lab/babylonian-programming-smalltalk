private - ui
newLabelMorph

	"Only for other annotations than assertions:"
	^ (self newLabel) asMorph
		name: #lineName;
		on: #click send: #value to: [
			ToolSet 
				browse: traceValue containedMethodReference actualClass 
				selector: traceValue containedMethodReference methodSymbol];
		color: Color gray;
		yourself.