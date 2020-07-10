as yet unclassified
binarySearch: anElement
	<layer: #bpInstrumented>
	<exampleNamed: 'basic' active: true self: 'BPSearchCollection newFrom: (1 to: 15)' with: '15'>
	<exampleNamed: 'not found' self: #numbersUpTo10 with: '20'>
	<exampleNamed: 'broken example' with: ''>

	| index low high flag | 
	self bpBlock: 1 enteredAt: thisContext.
low := 1.
	high := self size.
	flag := Object new.
	
	self bpBlock: 1 leftWith: ([self bpBlock: 2 enteredAt: thisContext.
self bpBlock: 2 leftWith: (high < low) at: thisContext] whileFalse: [
		self bpBlock: 3 enteredAt: thisContext.
index := (self bpAssertAfter: [high + low // 2] that: [:result | result < 20] forAssertion: 7345425 given: 'BPSearchCollection>>#binarySearch:>>#''not found''' inContext: thisContext).self bpBlock: 3 leftWith: ((anElement < (self at: (self bpTrace: [index] forProbe: 3156627 inContext: thisContext)))
			ifTrue: [ self bpBlock: 4 enteredAt: thisContext.
self bpBlock: 4 leftWith: (high := index - 1 ) at: thisContext]
			ifFalse: [
				self bpBlock: 5 enteredAt: thisContext.
self bpBlock: 5 leftWith: (anElement > (self at: index)
					ifTrue: [ self bpBlock: 6 enteredAt: thisContext.
self bpBlock: 6 leftWith: ((self bpTraceAssignmentOf: [low := index + 1 ] before: {'low' . low} forProbe: 4824443 inContext: thisContext)) at: thisContext]
					ifFalse: [ self bpBlock: 7 enteredAt: thisContext.
^ self bpBlock: 7 leftWith: ((self bpTrace: [index] forProbe: 5475766 inContext: thisContext)) at: thisContext]) at: thisContext]) at: thisContext]) at: thisContext.