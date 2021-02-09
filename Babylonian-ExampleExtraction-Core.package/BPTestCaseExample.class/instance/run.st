executing
run
	
	self testCaseInstance ifNotNil: [
		self testCaseInstance perform: self methodSelector]