building
buildTestForClass: aClass
	"Builds the whole method as string"

	^ '{1}<n><t>{2}<n><n><t>{3}'
		expandMacros
		format: {
			self buildTestNameForClass: aClass.
			self testComment.
			self buildMethod}