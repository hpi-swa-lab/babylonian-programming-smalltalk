stepping and presenter
step

	| trace |
	super step.
	trace := self example currentTrace.
	(trace notNil and: [trace exampleErrored])
		ifTrue: [self ensureErrorIndicatorFor: trace]
		ifFalse: [self ensureNoErrorIndicator].
		
	(trace notNil and: [trace hasTraceCompleted not and: [self example tracingIsStillRunning]])
		ifTrue: [ 
			self example tracingProcessIsSuspended 
				ifTrue: [self ensureResumeTracingIcon]
				ifFalse: [self ensureLoaderIcon]]
		ifFalse: [self ensureNoLoaderIcon].
	self updateAssertResultIcon.