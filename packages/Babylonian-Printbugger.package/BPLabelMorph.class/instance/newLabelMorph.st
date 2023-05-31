private - ui
newLabelMorph

	"Only for other annotations than assertions:"
	^ (self newLabel) asMorph
		name: #lineName;
		on: #click send: #value to: [
			self containingSwimlane 
				ifNil: [ToolSet 
						browse: traceValue containedMethodReference actualClass 
						selector: traceValue containedMethodReference methodSymbol]
				ifNotNil: [self containingSwimlane 
					browseFor: traceValue containedMethodReference compiledMethod]];
		color: self class actionTextColor;
		yourself.