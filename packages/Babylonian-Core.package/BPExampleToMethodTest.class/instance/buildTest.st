building
buildTest
	"Builds the whole method as string"

	^ 'test{1}<n><t>{2}'
		expandMacros
		format: {
			self serializedTestName.
			self buildAssertion}