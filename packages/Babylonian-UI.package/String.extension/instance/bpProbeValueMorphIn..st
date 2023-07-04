*Babylonian-UI
bpProbeValueMorphIn: traceValue

	^ BPAnnotationMorph newContainerMorph 
		addMorph: (self asText asMorph
			color: BPAnnotationMorph textColor;
			yourself); 
		yourself