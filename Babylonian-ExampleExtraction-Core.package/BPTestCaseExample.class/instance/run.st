executing
run
	
	self testCaseClass ifNotNil: [
		self testCaseInstance: (self testCaseClass run: self methodSelector)]