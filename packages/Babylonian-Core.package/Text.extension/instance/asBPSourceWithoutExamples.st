*Babylonian-Core
asBPSourceWithoutExamples
	
	^ String streamContents: [:stream |
		(BPTextReadWriter on: stream) 
			ignoreExamples;
			nextPutText: self]