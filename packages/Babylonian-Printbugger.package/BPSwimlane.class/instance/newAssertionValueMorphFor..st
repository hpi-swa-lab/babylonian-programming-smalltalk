private - ui
newAssertionValueMorphFor: aTraceValue

	| icon |
	icon := aTraceValue tracedValue ifTrue: [ToolIcons testGreen] ifFalse: [ToolIcons testOrange].
	
	^ BPAnnotationMorph newContainerMorph 
		addTransparentSpacerOfSize: self class assertionValueSpacing;
		addMorphBack: (self scaleIcon: icon by: self class assertionIconScale) asMorph;
		addTransparentSpacerOfSize: self class assertionValueSpacing;
		addMorphBack: (aTraceValue belongingAnnotation assertion asStringMorph color: self fontColor); 
		yourself