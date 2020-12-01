private - ui
executionResultAsString: anExecutionResult
	
	(anExecutionResult isKindOf: Exception)
		ifTrue: [ ^ 'Error: ', anExecutionResult printString].
		
	^ anExecutionResult printString