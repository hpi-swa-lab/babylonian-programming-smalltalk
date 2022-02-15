private
lineSubmorphsFor: aTraceValue calledBy: aStackOfMethodReferences

	| valueMorph padding |
	valueMorph := self newLabelValuePairMorphFor: aTraceValue.
	padding := (self isTraceValueVisible: aTraceValue) ifTrue: [10] ifFalse: [2].
	
	^ {self newHaltButtonFor: aTraceValue.
		self newBarMorphFor: aTraceValue 
			calledBy: aStackOfMethodReferences 
			withHeight: (valueMorph fullBounds height + padding).
		valueMorph.}
	