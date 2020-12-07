recording
trace: anObject forAssertion: anAssertionId inContext: aContext
	
	self 
		addTracedValue: (self newTracedValue: anObject expression: '' stackFrom: aContext)
		forAssertion: anAssertionId.