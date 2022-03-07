private - ui
visualizeSubmorphs

	| valueMorph padding |
	valueMorph := self newLabelValuePairMorph.
	padding := self isTraceValueVisible ifTrue: [10] ifFalse: [2].
	
	self addAllMorphsBack: {self newHaltButton.
		self newBarMorphOfHeight: (valueMorph fullBounds height + padding).
		valueMorph.}.
	