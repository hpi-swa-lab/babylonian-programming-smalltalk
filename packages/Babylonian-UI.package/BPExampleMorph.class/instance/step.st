stepping and presenter
step
	
	| trace |
	trace := self example currentTrace.
	(trace notNil and: [trace exampleErrored])
		ifTrue: [self ensureErrorIndicatorFor: trace]
		ifFalse: [self ensureNoErrorIndicator].
		
	(trace notNil and: [trace hasTraceCompleted not and: [self example tracingIsStillRunning]])
		ifTrue: [self ensureLoaderIcon]
		ifFalse: [self ensureNoLoaderIcon].

	"(trace notNil and: [trace hasTraceCompleted] and: [trace exampleErrored not])
		ifTrue: [(self submorphNamed: #duration) contents: trace duration asMilliSeconds asString, ' ms'] 
		ifFalse: [(self submorphNamed: #duration) contents: 'did not run yet']"