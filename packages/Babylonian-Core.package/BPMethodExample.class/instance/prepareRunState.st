tracing
prepareRunState
	
	#bpInstrumented withoutLayerDo: [
		^ BPMethodExampleRunConfiguration new
			example: self;
			receiver: self newReceiver;
			in: [:config | self initializeArgumentsDictionaryIn: config];
			yourself].