private - ui
newStackFrameMorphFor: aMethodReference withHeight: aNumber

	| stackMorph |
	stackMorph := Morph new 
		color: (self colorFor: aMethodReference);
		extent: (self stackDepth@aNumber);
		balloonText: aMethodReference asString;
		setProperty: #stackMethodReference
		toValue: aMethodReference;
		on: #click 
			send: #value 
			to: [containingSwimlane browseFor: aMethodReference compiledMethod];
		yourself.
	
	stackMorph
		on: #mouseEnter
			send: #value
			to: [stackMorph borderStyle: (BorderStyle width: 2 color: Color black)];
		on: #mouseLeave
			send: #value
			to: [stackMorph borderStyle: nil].
			
	^ stackMorph
	