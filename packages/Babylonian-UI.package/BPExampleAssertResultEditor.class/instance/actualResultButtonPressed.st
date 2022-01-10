actions
actualResultButtonPressed

	(self example currentTrace notNil and: [self example currentTrace hasTraceCompleted]) 
		ifTrue: [self example currentTrace executionResult inspect]
		ifFalse: ["Do nothing as there is nothing to inspect"]. 