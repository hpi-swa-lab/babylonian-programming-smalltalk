public access
compileCue: aCueWithBPSource noPattern: aBoolean ifFail: failBlock
	

	"This method expects source code which already has annotations in comments present"

	| originalMethod bpSource basicCue |
	aBoolean ifTrue: [self error: 'Cannot use BPCompiler for methods without patterns.'].
	
	bpSource := aCueWithBPSource sourceStream contents asString.
	basicCue := CompilationCue
		source: bpSource readStream
		context: aCueWithBPSource context 
		receiver: aCueWithBPSource receiver 
		class: aCueWithBPSource getClass 
		environment: aCueWithBPSource environment 
		requestor: aCueWithBPSource requestor.
	originalMethod := super compileCue: basicCue noPattern: aBoolean ifFail: failBlock.
	
	"bpSource := originalMethod sourceText asString.
	(self methodSourceRequiresBPLayers: bpSource) ifTrue: [
		(self compileInstrumentedVersionOf: aCueWithBPSource) ifFalse: failBlock]."
									
	^ originalMethod