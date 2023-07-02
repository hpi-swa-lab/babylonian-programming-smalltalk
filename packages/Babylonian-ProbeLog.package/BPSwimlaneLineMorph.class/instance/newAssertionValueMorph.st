private - ui
newAssertionValueMorph

	| icon |
	icon := traceValue tracedValue ifTrue: [ToolIcons testGreen] ifFalse: [ToolIcons testOrange].
	
	^ BPAnnotationMorph newContainerMorph 
		addTransparentSpacerOfSize: self class assertionValueSpacing;
		addMorphBack: (self scaleIcon: icon by: self class assertionIconScale) asMorph;
		addTransparentSpacerOfSize: self class assertionValueSpacing;
		addMorphBack: (traceValue belongingAnnotation assertion asStringMorph color: self fontColor); 
		yourself