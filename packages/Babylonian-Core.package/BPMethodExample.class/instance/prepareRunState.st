tracing
prepareRunState
	
	#bpInstrumented withoutLayerDo: [ | newState |
		newState := BPMethodExampleRunConfiguration new.
		newState receiver: (self newReceiverIn: newState).
		newState arguments: (self newArgumentsDictionaryIn: newState).
		^ newState].