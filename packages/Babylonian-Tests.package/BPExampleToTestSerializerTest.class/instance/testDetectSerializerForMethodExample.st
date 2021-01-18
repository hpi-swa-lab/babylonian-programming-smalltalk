tests
testDetectSerializerForMethodExample

	| example |

	example := ((BPEuropeanFlag>>#initialize) bpExamples at: 1).
	self assert: BPExampleToMethodExample equals: (BPExampleToTestSerializer chooseSerializationClassFor: example)