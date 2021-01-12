running
setUp

	method := BPTestExamplesClass>>#errorMethod:.

	{method.
	(BPTestExamplesClass>>#methodWithLiveSpecimen:) .
	(BPTestExamplesClass>>#methodWithScriptExamples) } do: [:m | 
		m removeProperty: #bpExamples ifAbsent: []]