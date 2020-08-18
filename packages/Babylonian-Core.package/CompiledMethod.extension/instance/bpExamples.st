*Babylonian-Core
bpExamples
	"This is were examples from annotations are born, and this should remain the only place"
	^ self properties at: #bpExamples ifAbsentPut: [ | newExamples |
		newExamples := (self pragmas select: [:p | 
			BPExample bpExamplePragmaSelectors includes: p keyword])
				collect: [:pragma |
					(BPExample fromPragma: pragma)
						method: self;
						yourself].
		newExamples do: [:newExample |
			newExample isActive ifTrue: [BPTraces value at: newExample exampleReference put: nil]].
		newExamples asOrderedCollection]