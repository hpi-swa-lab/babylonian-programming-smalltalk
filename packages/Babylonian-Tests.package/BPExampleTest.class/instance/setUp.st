running
setUp

	method := BPTestExamplesClass>>#binarySearchIn:theElement:.

	{method.
	(BPTestExamplesClass>>#methodWithLiveSpecimen:) .
	(BPTestExamplesClass>>#methodWithScriptExamples) } do: [:m | 
		m removeProperty: #bpExamples ifAbsent: []]