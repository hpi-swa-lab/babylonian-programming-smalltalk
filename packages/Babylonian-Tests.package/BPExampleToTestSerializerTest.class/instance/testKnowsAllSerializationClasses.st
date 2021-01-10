tests
testKnowsAllSerializationClasses

	self assert: {BPExampleToMethodExample. BPExampleToMethodTest. BPExampleToNegativeMethodExample.} equals: (BPExampleToTestSerializer serializationClasses)