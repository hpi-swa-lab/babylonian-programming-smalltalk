as yet unclassified
assertRoundtripFromMethod: anExampleMethod At: anIndex ToTest: aTestMethodBlock

	| original result |

	original := anExampleMethod bpExamples at: anIndex.
	BPExampleToTestSerializer serialize: original.
	result := BPDeserializer deserialize: aTestMethodBlock value for: anExampleMethod.
	self assertExample: original equals: result.