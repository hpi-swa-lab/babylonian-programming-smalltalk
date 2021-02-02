initialize-release
initialize
	


	super initialize.
	
	isRecording := false.
	
	self
		recordings: OrderedCollection new;
		selectedRecordingIndex: 1.