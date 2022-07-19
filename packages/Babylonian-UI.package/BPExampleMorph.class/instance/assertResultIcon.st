private - ui
assertResultIcon

	| currentTrace |
	example hasExpectedResult ifFalse: [^ ToolIcons testGray].

	currentTrace := self example currentTrace.
	(currentTrace notNil and: [currentTrace hasTraceCompleted]) ifFalse: [^ ToolIcons testGray]. 		
	 ^ [currentTrace executionResult = self example newExpectedResultObject
			ifTrue: [ToolIcons testGreen]
			ifFalse: [ToolIcons testOrange]]
		on: Error
		do: [:anError | ToolIcons testRed]
		