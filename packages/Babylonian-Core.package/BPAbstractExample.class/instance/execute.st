executing
execute
	
	^ [self executeSynchronously] 
		forkAt: Processor userBackgroundPriority
		named: 'Example process for: ' , self exampleName