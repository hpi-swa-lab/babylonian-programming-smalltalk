*Babylonian-UI
bpProbeValueMorphIn: traceValue


	^ BPAnnotationMorph newContainerMorph 
		addMorph: ((self printString asMorph)
						color: (PluggableTextMorph basicNew userInterfaceTheme textColor);
						yourself); 
		yourself