tests
testShowsNoSwimlanesForNoActiveExamples
	
	self assert: (printbugger canvasMorph submorphs first contents) equals: 'No active examples have been found to display.'.
	