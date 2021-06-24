private
newLineNameMorphFor: aTraceValue
	
	|name|
	name := aTraceValue belongingProbe
		ifNotNil: [aTraceValue belongingProbe label]
		ifNil: [aTraceValue belongingProbeId].
		
	^ name asMorph
		name: #lineName;
		on: #click send: #value to: [
			ToolSet 
				browse: aTraceValue containedMethodReference actualClass 
				selector: aTraceValue containedMethodReference methodSymbol];
		yourself
		