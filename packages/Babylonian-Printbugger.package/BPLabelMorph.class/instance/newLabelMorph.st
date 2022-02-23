private - ui
newLabelMorph

	"Only for other annotations than assertions:"
	^ (self newLabel) asMorph
		name: #lineName;
		on: #click send: #value to: [
			self containingSwimlane 
				ifNil: [ToolSet 
						browse: self traceValue containedMethodReference actualClass 
						selector: self traceValue containedMethodReference methodSymbol]
				ifNotNil: [self containingSwimlane 
					browseFor: self traceValue containedMethodReference compiledMethod]];
		color: Color gray;
		yourself.