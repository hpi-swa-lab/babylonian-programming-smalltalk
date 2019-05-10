tests
testExamplesAreNotEqualIfTheyAreNotBothExamples

	| examples method |
	method := BPTestExamplesClass>>#binarySearchIn:theElement:.
	examples := {BPExample new . BPExample new} collect: [:example |
		example
			method: method;
			exampleName: 'test name';
			arguments: #(1 2 3);
			yourself].
	examples := {examples first . 2}.
	self deny: examples first = examples second
		
	