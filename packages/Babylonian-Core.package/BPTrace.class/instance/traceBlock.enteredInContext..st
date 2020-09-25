recording
traceBlock: id enteredInContext: aContext
	
	(blockRecord at: id ifAbsentPut: [OrderedCollection new]) add: (self stackFrom: aContext)