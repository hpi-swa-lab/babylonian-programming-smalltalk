*Babylonian-UI
bpProbeValueMorphIn: traceValue
	
	| container |
	container := BPAnnotationMorph newContainerMorph.
		
	^ container 
		addMorphBack: ((BPEmojis emojiFor: traceValue tracedValueIdentityHash) 
			scaledToSize: BPAnnotationMorph fontHeight) asMorph;
		addMorphBack: (self scaledToSize: BPAnnotationMorph fontHeight * 8) asMorph;
		yourself