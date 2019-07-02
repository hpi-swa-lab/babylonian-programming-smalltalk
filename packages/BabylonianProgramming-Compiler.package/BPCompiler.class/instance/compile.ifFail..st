public access
compile: aCue ifFail: failBlock 

	| originalMethod bpSource basicCue |
	bpSource := aCue sourceStream contents asBPSource asString.
	basicCue := CompilationCue
		source: bpSource readStream
		context: aCue context 
		receiver: aCue receiver 
		class: aCue getClass 
		environment: aCue environment 
		requestor: aCue requestor.
	originalMethod := super compile: basicCue ifFail: failBlock.
	
	bpSource := aCue sourceStream contents asBPSource asString.
	(self methodSourceRequiresBPLayers: bpSource) ifTrue: [
		self compileInstrumentedVersionOf: aCue].
									
	^ originalMethod