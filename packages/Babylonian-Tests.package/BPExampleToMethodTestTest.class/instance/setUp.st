running
setUp

	method := BPTestExamplesClass>>#addAndLog:.

	{method.
	(BPTestExamplesClass>>#methodWithLiveSpecimen:) .
	(BPTestExamplesClass>>#methodWithScriptExamples) } do: [:m | 
		m removeProperty: #bpExamples ifAbsent: []]