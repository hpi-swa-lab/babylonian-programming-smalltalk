utility
createExamples

	^ {BPExample new . BPExample new} collect: [:example |
		example
			method: method;
			exampleName: 'test name';
			arguments: #(1 2 3);
			yourself].