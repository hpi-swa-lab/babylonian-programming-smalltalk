example methods
methodAWithExamplesAndReplacementAndAssertions
        <exampleNamed: 'some example'>
        <exampleNamed: 'another example'>
        | a |
        a := self bpReplace: [2] with: 4 for: 'some example'.
        self bpAssert: [a = 4] forAssertion: 5 given: 'some example' inContext: thisContext.
        ^ self bpTrace: a forId: 10 forExpression: 'a' inContext: thisContext
