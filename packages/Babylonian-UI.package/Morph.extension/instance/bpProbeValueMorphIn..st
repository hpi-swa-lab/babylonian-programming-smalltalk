*Babylonian-UI
bpProbeValueMorphIn: traceValue
	
	| container |
	container := BPAnnotationMorph newContainerMorph.
		
	^ container 
		addMorphBack: ((BPEmojis emojiFor: traceValue tracedValueIdentityHash) scaledToSize: BPAnnotationMorph fontHeight) asMorph;
		addMorphBack: (self imageForm scaledToSize: BPAnnotationMorph fontHeight * 3) asMorph;
		yourself