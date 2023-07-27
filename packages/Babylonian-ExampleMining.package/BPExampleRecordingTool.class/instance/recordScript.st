recording
recordScript

	isRecording ifTrue: [self stopRecording].

	self startRecording.
	Compiler evaluate: script.
	self stopRecording