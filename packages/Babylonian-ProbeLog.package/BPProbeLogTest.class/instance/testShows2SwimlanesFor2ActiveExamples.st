tests
testShows2SwimlanesFor2ActiveExamples

	self initExamplesWithoutAnnotations.
	self assert: (BPExamples value activeExamples size) equals: 2.
	probelog updateFrom: BPExamples value activeExamples.
	self assert: (probelog submorphs size) equals: 3.
	