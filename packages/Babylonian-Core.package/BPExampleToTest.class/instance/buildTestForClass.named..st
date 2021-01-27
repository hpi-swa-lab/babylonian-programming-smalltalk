building
buildTestForClass: aClass named: aNameString

	^ '{1}<n><t>{2}<n><n><t>{3}'
		expandMacros
		format: {
			aNameString.
			self buildComment.
			self buildMethodBody.}