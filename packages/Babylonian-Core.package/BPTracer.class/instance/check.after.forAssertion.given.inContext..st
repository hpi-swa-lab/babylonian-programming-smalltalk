asserting
check: assertionBlock after: codeBlock forAssertion: anAssertionId given: anExampleName inContext: aContext

	| result |
	result := #bpInstrumented withLayerDo: [codeBlock value].
	(self exampleNameMatches: anExampleName) ifTrue: [
		trace
			trace: ((assertionBlock cull: result) = true)
			forAssertion: anAssertionId
			inContext: aContext].
	^ result

	