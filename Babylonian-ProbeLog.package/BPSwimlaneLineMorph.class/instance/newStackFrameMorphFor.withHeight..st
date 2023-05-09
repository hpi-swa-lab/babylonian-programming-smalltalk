private - ui
newStackFrameMorphFor: aBPContext withHeight: aNumber

	| stackMorph methodReference|
	methodReference := aBPContext methodReference.
	stackMorph := Morph new 
		color: (self colorFor: methodReference);
		extent: (self stackDepth@aNumber);
		balloonText: methodReference asString;
		setProperty: #stackMethodReference toValue: methodReference;
		setProperty: #bpContext toValue: aBPContext;
		yourself.
	
	self addInteractionsToStackMorph: stackMorph for: aBPContext.

	^ stackMorph
	