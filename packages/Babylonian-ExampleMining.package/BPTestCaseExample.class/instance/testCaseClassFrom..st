initialize-release
testCaseClassFrom: aTestCaseClassName

	self testCaseClass: (Smalltalk at: aTestCaseClassName asSymbol ifAbsent: [self halt])