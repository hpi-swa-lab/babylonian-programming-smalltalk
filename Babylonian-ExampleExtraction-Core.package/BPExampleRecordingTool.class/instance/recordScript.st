recording
recordScript
	
	self startRecording.
	Compiler evaluate: script.
	self stopRecording.