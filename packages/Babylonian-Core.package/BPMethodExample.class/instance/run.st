tracing
run
	
	| receiver arguments |
	BPByteCodeCallgraphTracer deactivateDuring: [#bpInstrumented withoutLayerDo: [
		receiver := self newReceiver.
		arguments := self newArguments]].
	
	^ receiver 
		perform: self method selector 
		withArguments: arguments