tests
testExampleAndExampleReferenceCompareEqual

	method bpExamples do: [:example |
		self assert: example = example exampleReference.
		self assert: example hash equals: example exampleReference hash]