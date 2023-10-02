tracing
prepareRunState
	
	#bpInstrumented withoutLayerDo: [ | newState |
		newState := BPMethodExampleRunConfiguration new.
		^ newState].