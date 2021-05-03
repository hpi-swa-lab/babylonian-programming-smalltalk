asserting
check: assertionBlock after: codeBlock forAssertion: anAssertionId given: anExampleName inContext: aContext
	
	| result |
	self checkForHaltAt: anAssertionId.
	
	result := #bpInstrumented withLayerDo: [(self wrapUserCode: codeBlock) value].
	(self exampleNameMatches: anExampleName) ifTrue: [
		trace
			trace: ((assertionBlock cull: result) = true)
			forAssertion: anAssertionId
			inContext: aContext].
	^ result

	