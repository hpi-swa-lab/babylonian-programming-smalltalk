building
buildMethodBody

	^ 'self assert: ({1}) equals: ({2})' format: {
		self buildMethodCall.
		self serializedExpectedResult}