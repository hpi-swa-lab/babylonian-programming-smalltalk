recording
selectedRecording
	
	^ self recordings at: self selectedRecordingIndex ifAbsent: [^ nil]