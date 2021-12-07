tests
testShowsNoSwimlanesForNoActiveExamples

	self assert: (printbugger submorphs first contents) equals: 'No active examples have been found to display.'.
	