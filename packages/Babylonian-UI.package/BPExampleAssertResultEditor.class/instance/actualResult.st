model accessing
actualResult

	| currentTrace |
	currentTrace := self example currentTrace.
	(currentTrace notNil and: [currentTrace hasTraceCompleted]) ifFalse: [^ 'Not yet executed']. 
	
	(currentTrace executionResult isKindOf: Exception)
		ifTrue: [ ^ 'Error {1} occured' format: {currentTrace executionResult printString}].

	^ currentTrace executionResult printString 