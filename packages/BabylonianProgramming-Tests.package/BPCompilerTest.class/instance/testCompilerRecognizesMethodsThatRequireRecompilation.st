tests
testCompilerRecognizesMethodsThatRequireRecompilation

	self 
		assert: (compiler methodSourceRequiresBPLayers: (BPTestExamplesClass>>#binarySearchIn:theElement:) getSource);
		assert: (compiler methodSourceRequiresBPLayers: (BPTestExamplesClass>>#methodOnlyWithExample) getSource);
		deny: (compiler methodSourceRequiresBPLayers: (BPTestExamplesClass>>#plainMethod) getSource).