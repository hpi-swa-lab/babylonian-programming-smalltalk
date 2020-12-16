recording
startRecording
	
	recorder := (BPMessageSendRecorder new
  		watchMethod: self compiledMethod;
		exampleMorph: self;
		yourself).
	
	recorder startRecording