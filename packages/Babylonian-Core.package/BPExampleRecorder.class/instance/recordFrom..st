private-recording
recordFrom: aContext
	
	#(bpExampleRecording) withoutLayersDo: [
		recordedCalls add: {aContext receiver copy. aContext arguments copy}]