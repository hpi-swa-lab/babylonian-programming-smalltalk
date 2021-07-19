updating
windowIsClosing
	
	isRecording ifTrue: [self stopRecording].
	super windowIsClosing.