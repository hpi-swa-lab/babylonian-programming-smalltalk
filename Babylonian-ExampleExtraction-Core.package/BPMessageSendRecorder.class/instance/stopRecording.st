recording
stopRecording
	
	"uninstall wrappers"
	"... maybe actually catch errors and stuff"
	self reset.
	self wrappers do: [:wrapper | wrapper uninstall].
	self collectArgumentNames.
	self fixDuration.		

	self exampleMorph newTopRecord: self topRecord