tests - running
testMethodExamplesCanChangeArgumentsInTheSetup
	
	| example |
	example := self createExamples first.
	example setUpScript: 'anElement := 1.'.
	self assert: 1 equals: example execute.