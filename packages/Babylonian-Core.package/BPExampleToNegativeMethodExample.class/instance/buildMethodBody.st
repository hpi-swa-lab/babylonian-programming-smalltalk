building
buildMethodBody

	^ 'self should: [{1}] raise: {2}' format: {
		self buildMethodCall.
		self example expectedResult}