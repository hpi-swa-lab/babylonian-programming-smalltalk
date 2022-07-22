tests
testShows2SwimlanesFor2ActiveExamples

	self initExamplesWithoutAnnotations.
	self assert: (BPExamples value activeExamples size) equals: 2.
	printbugger updateFrom: BPExamples value activeExamples.
	self assert: (printbugger submorphs size) equals: 3.
	