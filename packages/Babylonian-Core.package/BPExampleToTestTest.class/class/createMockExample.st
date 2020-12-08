fixtures
createMockExample

	^ BPMethodExample new 
		receiverConstructor: 'Thing new';
		argumentScripts: #(2 '42');
		exampleName: 'example';
		"expectedResult: '3';"
		method: (BPMockMethod newWithName: 'doBla:with:' inClass: 'TestObject' categorized: 'TestObjects')