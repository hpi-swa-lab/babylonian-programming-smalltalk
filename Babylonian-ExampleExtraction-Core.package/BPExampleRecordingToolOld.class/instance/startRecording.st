recording
startRecording
	
	recorder := (BPExampleRecorder new
  		instrumentMethod: self compiledMethod;
		yourself).
	
	recorder startRecording