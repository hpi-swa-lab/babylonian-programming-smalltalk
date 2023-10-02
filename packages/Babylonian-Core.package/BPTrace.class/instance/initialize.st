initialize-release
initialize

	| bpContextsToRawPath |
	super initialize.
	probes := IdentityDictionary new.
	assertions := IdentityDictionary new.
	exampleErrored := false.
	hasTraceCompleted := false.
	blockRecord := Dictionary new.
	chronologicallyTrackedTraceValuesCount := 0.
	mutex := Mutex new.
	notificationSent := false.
	
	controlFlowPaths := IdentityDictionary new.
	
	bpContextsToRawPath := [:bpContexts | 
			(bpContexts collect: [:context | {context receiverClass . context selector}])].
	allPaths := PluggableDictionary
		hashBlock: [:bpContexts | (bpContextsToRawPath value: bpContexts) hash]
		equalBlock: [:bpContexts1 :bpContexts2 |
			(bpContextsToRawPath value: bpContexts1) = (bpContextsToRawPath value: bpContexts2)]