example methods
methodWithMultipleProbes
	<exampleNamed: 'probe example' self: ''>
	<exampleNamed: 'another probe example' self: '#new'>
	{1. 2. 3.} do: [:aNumber | 
		self bpTrace: [aNumber] forProbe: 10 inContext: thisContext.
		self bpTrace: [aNumber*2] forProbe: 11 inContext: thisContext].