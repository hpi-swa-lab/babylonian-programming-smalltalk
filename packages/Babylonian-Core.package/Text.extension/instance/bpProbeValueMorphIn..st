*Babylonian-Core
bpProbeValueMorphIn: traceValue

	^ BPAnnotationMorph newContainerMorph 
		addMorph: (self asMorph
			color: (PluggableTextMorph basicNew userInterfaceTheme textColor);
			yourself); 
		yourself