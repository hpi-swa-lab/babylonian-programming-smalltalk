example methods
methodAWithExamplesAndAssertionWithGlobalName
        <exampleNamed: 'some example'>  
        <exampleNamed: 'another example'>  
        | a |
        a := 4.
        self bpAssertAfter: [] that: [a = 4] forAssertion: 5 given: 'BPTestManuallyInstrumentedClass>>#methodAWithExamplesAndSsertionWithGlobalName>>#''some example''' inContext: thisContext.
        ^ self bpTrace: [a] forProbe: 10 inContext: thisContext
