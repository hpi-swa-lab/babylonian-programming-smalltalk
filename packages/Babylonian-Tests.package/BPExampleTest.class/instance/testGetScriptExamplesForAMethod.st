tests - script examples
testGetScriptExamplesForAMethod
	
	method := BPTestExamplesClass>>#methodWithScriptExamples.
	self assert: 2 equals: method bpExamples size.