*Babylonian-Core
runExamples
	
	self bpExamples
		select: [:example | example isActive] 
		thenDo: [:example | example traceInBackground]