running
setUp

	method := BPTestExamplesClass>>#schwubbleMethod.

	{method.
	(BPTestExamplesClass>>#methodWithLiveSpecimen:) .
	(BPTestExamplesClass>>#methodWithScriptExamples) } do: [:m | 
		m removeProperty: #bpExamples ifAbsent: []]