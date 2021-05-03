*Babylonian-Core-Callgraph-ByteCode
flushAllCaches

	(FlushingPaused ifNil: [false]) ifTrue: [
		self allInstances do: [:method | method flushCache]]