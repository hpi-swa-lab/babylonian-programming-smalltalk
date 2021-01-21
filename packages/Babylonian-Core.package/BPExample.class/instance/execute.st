executing
execute
	
	self runSetUp.
	[^ self run] ensure: [
		self runTearDown]