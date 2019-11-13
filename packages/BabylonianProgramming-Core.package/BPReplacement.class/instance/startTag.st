serialization
startTag
	
	^ '"<bpReplace for: ''{1}'' with: {2}>"' format: {
		self exampleName . self replacementScript}