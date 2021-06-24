private
newLineNameMorphFor: aTraceValue
	
	|name|
	name := aTraceValue belongingProbeLabel 
		ifNotNil: [aTraceValue belongingProbeLabel]
		ifNil: [aTraceValue belongingProbeId].
	^ name asMorph
		name: #lineName;
		on: #click send: #value to: [
			ToolSet 
				browse: aTraceValue containedMethodReference actualClass 
				selector: aTraceValue containedMethodReference methodSymbol];
		yourself
		