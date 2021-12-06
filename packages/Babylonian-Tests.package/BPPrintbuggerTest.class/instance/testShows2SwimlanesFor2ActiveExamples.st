tests
testShows2SwimlanesFor2ActiveExamples

	self initExamplesWithoutAnnotations.
	self assert: (BPExamples value activeExamples size) equals: 2.
	self assert: (printbugger canvasMorph submorphs size) equals: 2.
	