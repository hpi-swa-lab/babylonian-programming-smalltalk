recording
stopRecording
	
	"uninstall wrappers"
	"... maybe actually catch errors and stuff"
	self reset.
	self wrappers do: [:wrapper | wrapper uninstall].
	self collectArgumentNames.
	self fixDuration.		
	"self triggerEvent: #recordingEnded"
	self exampleMorph updateExample: self topRecord