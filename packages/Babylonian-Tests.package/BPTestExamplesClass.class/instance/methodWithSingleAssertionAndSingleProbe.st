example methods
methodWithSingleAssertionAndSingleProbe
	<exampleNamed: 'some example 72' self: 'BPTestExamplesClass new'>
	<exampleNamed: 'some example 89' self: 'BPTestExamplesClass new'>
	{1. 2. 3.} do: [:aNumber |
		"<bpAssert id: 4267855 for: 'all examples' that: [:result | result = 2]>"aNumber"</bpAssert>".
		"<bpProbe id: 969826>"aNumber"</bpProbe>"*2].