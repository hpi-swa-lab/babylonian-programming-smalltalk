private
lineSubmorphsFor: aTraceValue relativeTo: aStackRelation
	
	| valueMorph |
	valueMorph := aTraceValue asValueMorph.
	
	^ {self newBarMorphFor: aTraceValue 
			relativeTo: aStackRelation 
			withHeight: (valueMorph fullBounds height + 20).
		self newHaltButtonFor: aTraceValue.
		self newLineNameMorphFor: aTraceValue.
		valueMorph.}
	