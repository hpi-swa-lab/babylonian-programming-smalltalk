executing
debug
	
	(Process 
		forBlock: [self execute] 
		runUntil: [:context | context selector = #runOn:]) debug.