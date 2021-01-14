*Babylonian-Core-Callgraph-ByteCode
pushClosureCopyNumCopiedValues: numCopied numArgs: numArgs blockSize: blockSize
	
	self print: 'closureNumCopied: ', numCopied printString
			, ' numArgs: ', numArgs printString
			, ' size: ', (blockSize).

	innerIndents
		atAll: (scanner pc to: scanner pc + blockSize - 1)
		put: (innerIndents at: scanner pc - 1) + 1