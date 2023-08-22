tracing
runOn: aState
	
	#bpInstrumented withoutLayerDo: [
		aState receiver: (self newReceiverIn: aState).
		aState arguments: (self newArgumentsDictionaryIn: aState).].
	
	^ aState receiver
		perform: self method selector 
		withArguments: aState arguments