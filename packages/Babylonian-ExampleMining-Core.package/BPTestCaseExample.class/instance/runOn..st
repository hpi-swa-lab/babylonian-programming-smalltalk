executing
runOn: unused

	self testCaseClass ifNotNil: [
		self testResult: (self testCaseClass run: self methodSelector)].