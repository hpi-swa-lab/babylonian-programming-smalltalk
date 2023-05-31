*Babylonian-Core
bpProbeValueMorphIn: traceValue

	^ BPAnnotationMorph newContainerMorph 
		addMorph: (self asMorph
			color: BPAnnotationMorph textColor;
			yourself); 
		yourself