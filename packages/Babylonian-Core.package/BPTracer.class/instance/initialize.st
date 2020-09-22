initialize-release
initialize
	
	super initialize.
	trace := BPTrace new.
	sendRecorder := MessageSendRecorder new.
	sendRecorder setMessageSend: (MessageSend receiver: Object new selector: #yourself). "just a dummy call"

	"Required as the send recorder expects us to provide the count of the call"
	sendCounter := IdentityDictionary new.
	
	"Required as the send recorder expects us to provide the record for a context"
	sendRecords := IdentityDictionary new.