*Babylonian-Core-Callgraph-ByteCode
pauseFlushingCachesDuring: aBlock
	"pause self >> #flushAllCaches during execution of aBlock, and call it once after aBlock completes.
	This is useful, for instance, when recompiling a large number of methods."
	FlushingPaused ifTrue: [^ aBlock value "support nested pausing"].
	FlushingPaused := true.
	^ aBlock ensure: [FlushingPaused := false.
		self flushAllCaches]