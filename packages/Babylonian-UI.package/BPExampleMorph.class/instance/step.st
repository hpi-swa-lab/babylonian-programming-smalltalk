stepping and presenter
step

	| trace |
	trace := self example currentTrace.
	(trace notNil and: [trace exampleErrored])
		ifTrue: [self ensureErrorIndicatorFor: trace]
		ifFalse: [self ensureNoErrorIndicator].
		
	(trace notNil and: [trace hasTraceCompleted not])
		ifTrue: [self ensureLoaderIcon]
		ifFalse: [self ensureNoLoaderIcon].
		
	(trace notNil and: [trace hasTraceCompleted])
		ifTrue: [self setExecutionResultButtonContentForTrace: trace]
		ifFalse: [self setExecutionResultButtonContentToInitialState].