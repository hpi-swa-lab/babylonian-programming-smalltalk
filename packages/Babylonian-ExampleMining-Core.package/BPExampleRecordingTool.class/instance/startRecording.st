recording
startRecording
	
	recorder := (BPExampleRecorder new
  		instrumentMethod: self method;
		yourself).
	
	recorder startRecording.
	self changed: #lampOn.