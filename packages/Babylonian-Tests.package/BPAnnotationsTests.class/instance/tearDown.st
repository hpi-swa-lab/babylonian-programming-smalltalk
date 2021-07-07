running
tearDown
	
	super tearDown.
	
	(BPTestExamplesClass>>#binarySearchIn:theElement:) removeProperty: #bpAnnotations.