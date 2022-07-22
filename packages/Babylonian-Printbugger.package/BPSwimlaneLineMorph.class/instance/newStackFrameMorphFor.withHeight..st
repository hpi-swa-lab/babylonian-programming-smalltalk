private - ui
newStackFrameMorphFor: aMethodReference withHeight: aNumber

	| stackMorph |
	stackMorph := Morph new 
		color: (self colorFor: aMethodReference);
		extent: (self stackDepth@aNumber);
		balloonText: aMethodReference asString;
		setProperty: #stackMethodReference
		toValue: aMethodReference;
		yourself.
	
	self addInteractionsToStackMorph: stackMorph for: aMethodReference.
			
	^ stackMorph
	