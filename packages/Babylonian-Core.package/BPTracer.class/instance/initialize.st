initialize-release
initialize
	
	super initialize.
	trace := BPTrace new.

	"Required as the send recorder expects us to provide the count of the call"
	sendCounter := IdentityDictionary new.
	
	"Required as the send recorder expects us to provide the record for a context"
	sendRecords := IdentityDictionary new