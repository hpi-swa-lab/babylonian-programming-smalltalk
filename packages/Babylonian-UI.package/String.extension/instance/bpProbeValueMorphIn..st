*Babylonian-UI
bpProbeValueMorphIn: traceValue

	^ BPAnnotationMorph newContainerMorph 
		addMorph: (self asText asMorph; 
						color: (PluggableTextMorph basicNew userInterfaceTheme textColor);
						 yourself); 
		yourself