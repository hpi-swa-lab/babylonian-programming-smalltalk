*Babylonian-UI
bpProbeValueMorphIn: traceValue
	"This has to return a container morph"
	| container |
	container := BPAnnotationMorph newContainerMorph.
		
	^ container 
		addMorphBack: ((BPEmojis emojiFor: traceValue tracedValue identityHash) 
			scaledToSize: BPAnnotationMorph fontHeight) asMorph;
		addMorphBack: (' ' , self printString) asMorph;
		yourself