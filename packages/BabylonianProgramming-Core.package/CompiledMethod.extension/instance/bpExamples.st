*BabylonianProgramming-Core
bpExamples

	^ (BPExample bpExamplePragmaSelectors gather: [:selector |
		self pragmasAt: selector]) collect: [:pragma |
			BPExample fromPragma: pragma]