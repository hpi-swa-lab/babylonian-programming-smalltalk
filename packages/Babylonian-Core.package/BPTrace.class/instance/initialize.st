initialize-release
initialize
	
	super initialize.
	probes := IdentityDictionary new.
	assertions := IdentityDictionary new.
	exampleErrored := false.
	hasTraceCompleted := false.
	blockRecord := Dictionary new.