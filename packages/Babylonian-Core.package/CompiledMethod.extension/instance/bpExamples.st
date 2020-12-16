*Babylonian-Core
bpExamples
	
	"This is were examples from annotations are born, and this should remain the only place.
	The other place were examples come to be is the BPExamplesMorph that can create new
	examples."
	| pragmaSelectors |
	pragmaSelectors := BPExample bpExamplePragmaSelectors.
	^ self properties at: #bpExamples ifAbsentPut: [ | newExamples |
		newExamples := self pragmas 
				select: [:p | pragmaSelectors includes: p keyword]
				thenCollect: [:pragma |
					(BPExample fromPragma: pragma)
						method: self;
						yourself].
		newExamples asOrderedCollection]