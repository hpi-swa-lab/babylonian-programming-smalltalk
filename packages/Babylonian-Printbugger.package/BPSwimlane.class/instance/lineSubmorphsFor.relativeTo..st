private
lineSubmorphsFor: aTraceValue relativeTo: aStackRelation

	| valueMorph haltButton |
	valueMorph := self newLabelValuePairMorphFor: aTraceValue.
	
	self flag: #todo "implement halt button for Assertions".
	haltButton := self newHaltButtonFor: aTraceValue.
	aTraceValue belongingAnnotation isAssertion 
		ifTrue: [haltButton := Morph new extent: haltButton extent; beTransparent; yourself].
	
	^ {haltButton.
		self newBarMorphFor: aTraceValue 
			relativeTo: aStackRelation 
			withHeight: (valueMorph fullBounds height + 10).
		valueMorph.}
	