private - ui
newAssertionValueMorphFor: aTraceValue

	| icon |
	icon := aTraceValue tracedValue ifTrue: [ToolIcons testGreen] ifFalse: [ToolIcons testOrange].
	
	^ BPAnnotationMorph newContainerMorph 
		addTransparentSpacerOfSize: self class assertionValueSpacing;
		addMorphBack: (self scaleIcon: icon by: 1.4@1.4) asMorph;
		addTransparentSpacerOfSize: self class assertionValueSpacing;
		addMorphBack: aTraceValue belongingAnnotation assertion asStringMorph; 
		yourself