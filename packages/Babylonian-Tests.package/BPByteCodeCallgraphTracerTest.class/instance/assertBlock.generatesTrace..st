as yet unclassified
assertBlock: aBlock generatesTrace: aString
	
	| t |
	t := BPByteCodeCallgraphTracer new.
	BPByteCodeCallgraphTracer value: t during: aBlock.
	self assert: aString withBlanksTrimmed equals: t eventsToStringForTest withBlanksTrimmed