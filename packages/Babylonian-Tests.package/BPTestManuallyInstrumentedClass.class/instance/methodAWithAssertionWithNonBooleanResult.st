example methods
methodAWithAssertionWithNonBooleanResult
        <exampleNamed: 'some example'>    
        <exampleNamed: 'another example'>    
        | a |
        a := 2.
        self bpAssertAfter: [a + 3] that: [2] forAssertion: 5 given: 'some example' inContext: thisContext.
        ^ a
