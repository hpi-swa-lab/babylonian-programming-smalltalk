recording
traceBlock: id enteredInContext: aContext
	
	(blockRecord at: id ifAbsentPut: [OrderedCollection new]) add: (self newTracedValue: nil expression: '' stackFrom: aContext).