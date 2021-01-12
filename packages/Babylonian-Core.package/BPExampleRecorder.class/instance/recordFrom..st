private-recording
recordFrom: aContext
	
	#(bpExampleRecording) withoutLayersDo: [
		recordedCalls add: {aContext receiver . aContext arguments}]