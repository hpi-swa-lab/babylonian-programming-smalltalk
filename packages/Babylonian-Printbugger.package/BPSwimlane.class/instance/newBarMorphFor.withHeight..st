private - ui
newBarMorphFor: aMethodReference withHeight: aNumber

	^ Morph new 
		color: (context colorFor: aMethodReference having: self class barColorScheme);
		extent: (self stackDepth@aNumber);
		yourself.
	