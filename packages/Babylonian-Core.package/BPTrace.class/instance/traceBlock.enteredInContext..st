recording
traceBlock: id enteredInContext: aContext
	
	| value |
	value := self newTracedValue: nil expression: '' stackFrom: aContext.
	mutex critical: [
		(blockRecord at: id ifAbsentPut: [OrderedCollection new]) add: value].