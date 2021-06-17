private
newLineNameMorphFor: aTraceValue
	
	| name |
	name := aTraceValue belongingProbeId asString asText.
	name addAttribute: (BPPluggableTextAttribute new evalBlock: [
		ToolSet 
			browse: aTraceValue containedMethodReference actualClass
			selector: aTraceValue containedMethodReference methodSymbol]).
	^ TextMorph string: name size: TextStyle defaultFont height