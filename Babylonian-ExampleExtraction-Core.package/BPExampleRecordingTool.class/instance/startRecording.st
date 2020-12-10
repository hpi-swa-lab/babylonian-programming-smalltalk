recording
startRecording
	
	recorder := (BPMessageSendRecorder new
  		watchMethod: self exampleMorph example method;
		exampleMorph: self;
		yourself).
	
	recorder startRecording