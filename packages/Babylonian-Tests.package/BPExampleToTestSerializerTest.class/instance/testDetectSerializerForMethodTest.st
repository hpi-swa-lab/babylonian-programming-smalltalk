tests
testDetectSerializerForMethodTest

	| example |

	example := ((BPSearchCollection>>#binarySearch:) bpExamples at: 1).
	self assert: BPExampleToMethodTest equals: (BPExampleToTestSerializer chooseSerializationClassFor: example)