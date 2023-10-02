executing
runOn: unused

	self testCaseClass ifNotNil: [
		self testCaseClass run: self methodSelector]