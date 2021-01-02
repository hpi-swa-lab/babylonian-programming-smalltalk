building
buildTestForClass: aClass

	^ '{1}<n><t>{2}<n><n><t>{3}'
		expandMacros
		format: {
			self buildTestNameForClass: aClass.
			self buildComment.
			self buildMethodBody.}