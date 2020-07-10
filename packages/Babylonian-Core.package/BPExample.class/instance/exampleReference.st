accessing
exampleReference

	^ BPExampleReference new
		methodReference: self method methodReference;
		exampleName: self exampleName;
		yourself