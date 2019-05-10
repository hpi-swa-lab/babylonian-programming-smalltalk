tests
testExamplesAreNotEqualIfTheirValuesAreNotEqual

	| examples method |
	method := BPTestExamplesClass>>#binarySearchIn:theElement:.
	examples := {BPExample new . BPExample new} collect: [:example |
		example
			method: method;
			exampleName: 'test name';
			arguments: #(1 2 3);
			yourself].
	examples first exampleName: 'b'.
	self deny: examples first = examples second
		
	