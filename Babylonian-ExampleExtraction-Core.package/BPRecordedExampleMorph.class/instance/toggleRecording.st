as yet unclassified
toggleRecording
	
	self isRecording
		ifTrue: [
			"self triggerEvent: #stopRecording."
			self stopRecording.
			self isRecording: false]
		ifFalse: [
			self startRecording.
			self isRecording: true].
	self updateRecordingButtonLabel