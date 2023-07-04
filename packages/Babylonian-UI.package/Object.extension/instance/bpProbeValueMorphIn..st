*Babylonian-UI
bpProbeValueMorphIn: traceValue
	
	"This has to return a container morph"
	| container |
	container := BPAnnotationMorph newContainerMorph.
		
	^ container 
		addMorphBack: ((BPEmojis emojiFor: traceValue tracedValueIdentityHash) 
			scaledToSize: BPAnnotationMorph fontHeight) asMorph;
		addMorphBack: (((' ' , self printString) asMorph) color: BPAnnotationMorph textColor);
		yourself