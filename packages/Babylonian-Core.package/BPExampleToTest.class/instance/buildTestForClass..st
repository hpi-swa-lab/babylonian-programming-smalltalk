building
buildTestForClass: aClass
	"Builds the whole method as string"

	^ '{1}<n><t>{2}'
		expandMacros
		format: {
			self buildTestNameForClass: aClass.
			self buildMethod}