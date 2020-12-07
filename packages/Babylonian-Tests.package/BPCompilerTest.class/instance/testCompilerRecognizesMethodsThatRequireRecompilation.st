tests
testCompilerRecognizesMethodsThatRequireRecompilation

	self 
		assert: (compiler methodSourceRequiresBPLayers: (BPTestExamplesClass>>#binarySearchIn:theElement:) getSource);
		"The next one is suprising as it contains an example but not annotations. As there are no annotations there
		is no need to recompile it."
		deny: (compiler methodSourceRequiresBPLayers: (BPTestExamplesClass>>#methodOnlyWithExample) getSource);
		deny: (compiler methodSourceRequiresBPLayers: (BPTestExamplesClass>>#plainMethod) getSource).