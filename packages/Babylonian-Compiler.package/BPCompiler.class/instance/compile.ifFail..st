public access
compile: aCueWithBPSource ifFail: failBlock
	
	"This method expects source code which has annotations embedded in comments, if any."
	| originalMethodNode bpSource basicCue |
	bpSource := aCueWithBPSource sourceStream contents asString.
	basicCue := CompilationCue
		source: bpSource readStream
		context: aCueWithBPSource context 
		receiver: aCueWithBPSource receiver 
		class: aCueWithBPSource getClass 
		environment: aCueWithBPSource environment 
		requestor: aCueWithBPSource requestor.
	originalMethodNode := super compile: basicCue ifFail: failBlock.
	self haltOnce.
	bpSource := originalMethodNode sourceText asString.
	(self methodSourceRequiresBPLayers: bpSource) ifTrue: [
		(self compileInstrumentedVersionOf: aCueWithBPSource) ifFalse: failBlock].
									
	^ originalMethodNode