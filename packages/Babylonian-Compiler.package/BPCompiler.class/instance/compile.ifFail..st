public access
compile: aCueWithBPSource ifFail: failBlock 
	"This method expects source code which already has annotations in comments present"

	| originalMethod bpSource basicCue |
	bpSource := aCueWithBPSource sourceStream contents asString.
	basicCue := CompilationCue
		source: bpSource readStream
		context: aCueWithBPSource context 
		receiver: aCueWithBPSource receiver 
		class: aCueWithBPSource getClass 
		environment: aCueWithBPSource environment 
		requestor: aCueWithBPSource requestor.
	originalMethod := super compile: basicCue ifFail: failBlock.
	
	bpSource := originalMethod sourceText asString.
	(self methodSourceRequiresBPLayers: bpSource) ifTrue: [
		(self compileInstrumentedVersionOf: aCueWithBPSource) ifFalse: failBlock].
									
	^ originalMethod