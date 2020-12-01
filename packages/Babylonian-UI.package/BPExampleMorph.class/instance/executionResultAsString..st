private - ui
executionResultAsString: anExecutionResult
	
	(anExecutionResult isKindOf: Exception)
		ifTrue: [ ^ 'Error: ', anExecutionResult printString].
	
	"(self example isExecutionResultSelf) "
	"	ifTrue: [^ 'self']."
		
	^ anExecutionResult printString