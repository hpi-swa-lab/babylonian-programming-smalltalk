initialize-release
initialize
	


	super initialize.
	
	isRecording := false.
	
	self
		recordings: "{1 -> {1}. 1 -> {2} . 4 -> {3}}" OrderedCollection new;
		selectedRecordingIndex: 1