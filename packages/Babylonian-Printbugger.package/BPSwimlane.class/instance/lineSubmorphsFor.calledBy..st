private
lineSubmorphsFor: aTraceValue calledBy: aStackOfMethodReferences

	| valueMorph |
	valueMorph := self newLabelValuePairMorphFor: aTraceValue.
	
	^ {self newHaltButtonFor: aTraceValue.
		self newBarMorphFor: aTraceValue 
			calledBy: aStackOfMethodReferences 
			withHeight: (valueMorph fullBounds height + 10).
		valueMorph.}
	