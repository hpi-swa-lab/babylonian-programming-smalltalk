recording
toggleRecording

	isRecording
		ifTrue: [
			self stopRecording.
			isRecording := false]
		ifFalse: [
			self startRecording.
			isRecording := true]