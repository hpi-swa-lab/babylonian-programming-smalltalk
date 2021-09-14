tracing
prepareRunState
	
	#bpInstrumented withoutLayerDo: [
		^ BPMethodExampleRunConfiguration new
			example: self;
			receiver: self newReceiver;
			arguments: self newArgumentsDictionary;
			yourself].