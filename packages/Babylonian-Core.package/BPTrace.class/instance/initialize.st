initialize-release
initialize

	super initialize.
	probes := IdentityDictionary new.
	assertions := IdentityDictionary new.
	exampleErrored := false.
	hasTraceCompleted := false.
	blockRecord := Dictionary new.
	chronologicallyTrackedTraceValuesCount := 0.
	mutex := Mutex new.