recording
createMockForest
	
	^ (BPMiniContext
		methodReference: methodReference
		receiver: self selectedRecording first copy
		arguments: self selectedRecording second copy) createMockForest