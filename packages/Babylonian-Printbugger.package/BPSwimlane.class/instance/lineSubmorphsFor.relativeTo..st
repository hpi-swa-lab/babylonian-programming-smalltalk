private
lineSubmorphsFor: aTraceValue relativeTo: aStackRelation
	
	| valueMorph |
	valueMorph := self newLabelValuePairMorphFor: aTraceValue.
	
	^ {self newHaltButtonFor: aTraceValue.
		self newBarMorphFor: aTraceValue 
			relativeTo: aStackRelation 
			withHeight: (valueMorph fullBounds height + 10).
		valueMorph.}
	