tracing
prepareRunState
	
	#bpInstrumented withoutLayerDo: [
		^ BPMethodExampleRunConfiguration new
			receiver: self newReceiver;
			arguments: self newArgumentsDictionary;
			yourself].