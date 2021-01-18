building
buildMethodBody
	
	^ 'self assert: ({1}) equals: ({2})' format: {
		self serializedExpectedResult.
		self buildMethodCall.}