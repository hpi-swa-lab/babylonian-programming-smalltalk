as yet unclassified
executionContinuationEntry
	
	| target |
	target := self.
	[target class == self class] whileTrue: [target := target children first].
	self assert: target class = BPCallgraphEntryContextExecutionContinuation.
	^ target