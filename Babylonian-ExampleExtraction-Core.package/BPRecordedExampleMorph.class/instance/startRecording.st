as yet unclassified
startRecording
	
	
	self recorder: (BPMessageSendRecorder new
  		watchMethod: self example method;
		exampleMorph: self;
		yourself).
		
	"recorder
		when: #recordingEnded
		send: #updateExample:
		to: self
		with: recorder topRecord."
		
	"self
		when: #stopRecording
		send: #stopRecording
		to: recorder."
		
	self recorder startRecording