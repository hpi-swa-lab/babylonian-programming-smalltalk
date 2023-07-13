executing
debug
	
	(Process 
		forBlock: [self executeSynchronously] 
		runUntil: [:context | context selector = #runOn:]) debug.