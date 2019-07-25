private
ensureTerminatedProcessAt: exampleReference

	| trace |
	trace := dictionary at: exampleReference ifAbsent: [^ true].
	trace ifNotNil: [
		trace exampleExecutionProcess ifNotNil: [:process | process terminate]]