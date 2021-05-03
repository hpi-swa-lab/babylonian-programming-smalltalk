public access
compile: aCueWithBPSource ifFail: failBlock
	
	^ self compileCue: aCueWithBPSource noPattern: false ifFail: failBlock