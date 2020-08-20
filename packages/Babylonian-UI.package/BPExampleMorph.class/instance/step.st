stepping and presenter
step

	| trace |
	trace := self example currentTrace ifNil: [BPTrace new].
	trace exampleErrored 
		ifTrue: [self ensureErrorIndicatorFor: trace]
		ifFalse: [self ensureNoErrorIndicator].