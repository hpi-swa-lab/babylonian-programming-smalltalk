private
blockIdxFromContext: aContext
	
	| pc state blockPositions blockIdx |
	self assert: aContext isClosureContext.
	pc := aContext closure blockCreationPC.
	state := BPByteCodeMethodState ofMethod: aContext method.
	blockPositions := state nopPositions select: [:each | each first == #beforeBlock] thenCollect: [:each | each second stop + 1].
	blockIdx := blockPositions indexOf: pc.
	self assert: blockIdx > 0.
	^ blockIdx + 1