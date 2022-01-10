private - ui
assertResultIcon

	| currentTrace |
	currentTrace := self example currentTrace.
	
	(currentTrace notNil and: [currentTrace hasTraceCompleted]) ifFalse: [^ ToolIcons testGray]. 
		
	 ^ [currentTrace executionResult = self example newExpectedResultObject
			ifTrue: [ToolIcons testGreen]
			ifFalse: [ToolIcons testOrange]]
		on: Error
		do: [:anError | ToolIcons testRed]
		