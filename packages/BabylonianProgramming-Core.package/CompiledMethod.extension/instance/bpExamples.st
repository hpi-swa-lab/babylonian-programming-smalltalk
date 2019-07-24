*BabylonianProgramming-Core
bpExamples

	^ self properties at: #bpExamples ifAbsentPut: [ | newExamples |
		newExamples := (BPExample bpExamplePragmaSelectors gather: [:selector |
			self pragmasAt: selector]) collect: [:pragma |
				(BPExample fromPragma: pragma)
					method: self;
					yourself].
		newExamples do: [:newExample |
			newExample isActive ifTrue: [BPTraces value at: newExample exampleReference put: nil]].
		newExamples]