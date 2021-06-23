private
newLineNameMorphFor: aTraceValue
	
	^ (aTraceValue belongingProbeId asString asText)
		addAttribute: (BPPluggableTextAttribute new evalBlock: [
			ToolSet 
				browse: aTraceValue containedMethodReference actualClass
				selector: aTraceValue containedMethodReference methodSymbol]);
		asMorph