tests
testCompilerRecognizesMethodsThatRequireRecompilation

	self assert: (compiler methodSourceRequiresBPLayers: (BPTestExamplesClass>>#binarySearchIn:theElement:) getSource).
	self deny: (compiler methodSourceRequiresBPLayers: (BPTestExamplesClass>>#plainMethod) getSource).