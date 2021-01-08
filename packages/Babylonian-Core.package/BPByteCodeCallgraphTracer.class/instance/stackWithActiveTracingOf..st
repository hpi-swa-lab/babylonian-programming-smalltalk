private
stackWithActiveTracingOf: aContext

	| ctx stack |
	ctx := aContext.
	stack := OrderedCollection new.
	[ctx notNil] whileTrue: [
		(BPByteCodeRewriter hasActiveTracing: ctx method) ifTrue: [stack addFirst: ctx].
		ctx := ctx sender].
	^ stack