tests - script examples
testGetScriptExamplesForAMethod
	
	method := BPTestExamplesClass>>#methodWithScriptExamples.
	self assert: 3 equals: method bpExamples size.