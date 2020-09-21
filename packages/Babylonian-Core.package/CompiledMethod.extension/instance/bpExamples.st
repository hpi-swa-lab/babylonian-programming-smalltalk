*Babylonian-Core
bpExamples
	"This is were examples from annotations are born, and this should remain the only place.
	The other place were examples come to be is the BPExamplesMorph that can create new
	examples."
	^ self properties at: #bpExamples ifAbsentPut: [ | newExamples |
		newExamples := (self pragmas select: [:p | 
			BPExample bpExamplePragmaSelectors includes: p keyword])
				collect: [:pragma |
					(BPExample fromPragma: pragma)
						method: self;
						yourself].
		newExamples do: [:newExample |
			newExample isActive ifTrue: [
				BPActiveExamples value add: newExample]].
		newExamples asOrderedCollection]