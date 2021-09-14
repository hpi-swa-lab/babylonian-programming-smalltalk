example methods
methodAWithAssertionUsingExpressionResult
	<exampleNamed: 'another example' self: ''>
	<exampleNamed: 'some example' self: ''>
        | a |
        a := 2.
        self bpAssertAfter: [a + 3] that: [:result | result = 5] forAssertion: 5 given: 'some example' inContext: thisContext.
        ^ a