*Babylonian-UI
bpProbeValueMorphIn: traceValue
	
	^ BPAnnotationMorph newContainerMorph 
		addMorph: (self printString asMorph
			color: BPAnnotationMorph textColor;
			yourself);  
		yourself