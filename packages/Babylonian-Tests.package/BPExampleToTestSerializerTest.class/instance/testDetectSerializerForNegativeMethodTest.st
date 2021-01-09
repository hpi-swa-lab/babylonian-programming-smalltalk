tests
testDetectSerializerForNegativeMethodTest

	| example |

	example := (BPTestExamplesClass>>#errorMethod:) bpExamples at: 2.
	self assert: BPExampleToNegativeMethodExample equals: (BPExampleToTestSerializer chooseSerializationClassFor: example)