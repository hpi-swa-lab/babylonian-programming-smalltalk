public access
compileCue: aCueWithBPSource noPattern: aBoolean ifFail: failBlock
	
	
	"This method expects source code which has annotations embedded in comments, if any."
	| originalMethodNode bpSource basicCue |
	
	aBoolean ifTrue: [self error: 'Cannot use BPCompiler for methods without patterns.'].
	
	bpSource := aCueWithBPSource sourceStream contents asString.
	basicCue := CompilationCue
		source: bpSource readStream
		context: aCueWithBPSource context 
		receiver: aCueWithBPSource receiver 
		class: aCueWithBPSource getClass 
		environment: aCueWithBPSource environment 
		requestor: aCueWithBPSource requestor.
	originalMethodNode := super compileCue: basicCue noPattern: aBoolean ifFail: failBlock.
	
	bpSource := originalMethodNode sourceText asString.
	(self methodSourceRequiresBPLayers: bpSource) ifTrue: [
		(self compileInstrumentedVersionOf: aCueWithBPSource) ifFalse: failBlock].

	^ originalMethodNode