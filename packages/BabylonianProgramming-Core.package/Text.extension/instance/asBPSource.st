*BabylonianProgramming-Core
asBPSource
	
	^ String streamContents: [:stream |
		(BPTextReadWriter on: stream) nextPutText: self]