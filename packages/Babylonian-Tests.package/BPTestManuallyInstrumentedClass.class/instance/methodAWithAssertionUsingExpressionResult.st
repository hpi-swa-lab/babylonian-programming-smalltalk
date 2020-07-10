example methods
methodAWithAssertionUsingExpressionResult
        <exampleNamed: 'some example'>   
        <exampleNamed: 'another example'>   
        | a |
        a := 2.
        self bpAssertAfter: [a + 3] that: [:result | result = 5] forAssertion: 5 given: 'some example' inContext: thisContext.
        ^ a
