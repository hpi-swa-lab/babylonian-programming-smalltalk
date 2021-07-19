executing
run
	
	self testCaseClass ifNotNil: [
		self testResult: (self testCaseClass run: self methodSelector)].