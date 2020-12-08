recording
startRecording
	
	"install wrappers + ggf record init"
	isFirstRecording := self topRecord children isEmpty.
	recordingProcess := Processor activeProcess.
	self wrappers: self createWrappers, self createWrappersForRandom.
	self wrappers do: [:wrapper | wrapper install].
	self sendMessage.