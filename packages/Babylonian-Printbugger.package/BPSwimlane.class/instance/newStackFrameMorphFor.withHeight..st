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
			to: [ToolSet browse: aMethodReference actualClass 
						selector: aMethodReference selector];
		yourself.
	
	stackMorph
		on: #mouseEnter
			send: #value
			to: [stackMorph borderStyle: (BorderStyle width: 2 color: Color black)];
		on: #mouseLeave
			send: #value
			to: [stackMorph borderStyle: nil].
			
	^ stackMorph
	