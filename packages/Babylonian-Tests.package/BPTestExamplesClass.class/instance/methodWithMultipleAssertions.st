example methods
methodWithMultipleAssertions
	<exampleNamed: 'some example 15' self: 'BPTestExamplesClass new'>
	<exampleNamed: 'some example 41' self: 'BPTestExamplesClass new'>
	{1. 2. 3.} do: [:aNumber |
		"<bpAssert id: 2133202 for: 'all examples' that: [:result | result == 1]>"aNumber"</bpAssert>".
		"<bpAssert id: 7020127 for: 'all examples' that: [:result | result == (aNumber*2)]>"aNumber*2"</bpAssert>"].