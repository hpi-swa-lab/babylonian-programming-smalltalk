*Babylonian-UI
bpProbeValueMorphIn: traceValue

	^ BPAnnotationMorph newContainerMorph 
		addMorph: self printString asMorph; 
		yourself