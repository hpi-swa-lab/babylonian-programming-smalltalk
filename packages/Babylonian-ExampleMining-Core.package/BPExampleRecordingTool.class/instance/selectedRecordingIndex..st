accessing
selectedRecordingIndex: aNumber
	
	selectedRecordingIndex := aNumber.
	self changed: #selectedRecording.
	self changed: #selectedRecordingIndex.
	