*Babylonian-UI
bpProbeValueMorphIn: traceValue
	
	| container |
	container := BPAnnotationMorph newContainerMorph.
		
	^ container 
		addMorphBack: ((BPEmojis emojiFor: traceValue tracedValue identityHash) scaledToSize: BPAnnotationMorph fontHeight) asMorph;
		addMorphBack: (' ' , self printString) asMorph;
		yourself