*Babylonian-UI
bpProbeValueMorphIn: traceValue
	
	^ BPAnnotationMorph newContainerMorph 
		addMorph: (RectangleMorph new 
			height: BPAnnotationMorph fontHeight;
			width: BPAnnotationMorph fontHeight;
			color: self;
			yourself); 
		yourself