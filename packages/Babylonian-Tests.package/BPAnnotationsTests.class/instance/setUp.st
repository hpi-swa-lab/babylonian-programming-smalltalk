running
setUp
	
	super setUp.
	
	(BPTestExamplesClass>>#binarySearchIn:theElement:) 
		removeProperty: #bpAnnotations;
		removeProperty: #bpExamples.