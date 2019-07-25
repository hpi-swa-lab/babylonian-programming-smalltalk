stepping and presenter
step

	| trace |
	trace := (BPTraces value at: self example ifAbsent: [BPTrace new]) ifNil: [BPTrace new].
	trace exampleErrored 
		ifTrue: [self ensureErrorIndicatorFor: trace]
		ifFalse: [self ensureNoErrorIndicator].