recording
stopRecording

	recorder stopRecording.
	recorder uninstall.
	
	self recordings: recorder recordedCalls.
	self changed: #lampOff