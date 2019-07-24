*BabylonianProgramming-Core
bpExamples

	^ self properties at: #bpExamples ifAbsentPut: [
		(BPExample bpExamplePragmaSelectors gather: [:selector |
			self pragmasAt: selector]) collect: [:pragma |
				(BPExample fromPragma: pragma)
					method: self;
					yourself]]