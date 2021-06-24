private
newLineNameMorphFor: aTraceValue
	
	"^ (self probeLabelOf: aTraceValue belongingProbeId from: aTraceValue containedMethodReference compiledMethod bpAnnotation) asStringMorph" self flag: #todo. "get the actual probe label"
	^ (aTraceValue belongingProbeId asStringMorph)
		name: #lineName;
		on: #click send: #value to: [
			ToolSet 
				browse: aTraceValue containedMethodReference actualClass 
				selector: aTraceValue containedMethodReference methodSymbol];
		yourself
		
	