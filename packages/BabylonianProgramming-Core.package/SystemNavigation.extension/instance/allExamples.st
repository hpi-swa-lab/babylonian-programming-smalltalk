*BabylonianProgramming-Core
allExamples

	^ (SystemNavigation default allMethodsSelect: [:m | m bpExamples notEmpty]) gather: [:m | m compiledMethod bpExamples]