building
buildTestForClass: aClass named: aName

	^ '{1}<n><t>{2}<n><n><t>{3}'
		expandMacros
		format: {
			aName.
			self buildComment.
			self buildMethodBody.}