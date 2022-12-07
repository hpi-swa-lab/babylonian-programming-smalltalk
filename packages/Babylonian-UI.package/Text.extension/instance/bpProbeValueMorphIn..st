*Babylonian-UI
bpProbeValueMorphIn: traceValue
	
	^ BPAnnotationMorph newContainerMorph 
		addMorph: (self asMorph lock; yourself); 
		yourself