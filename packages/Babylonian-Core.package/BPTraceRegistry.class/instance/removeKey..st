accessing
removeKey: anExampleReference
	"The following complex logic should prevent a deadlock if there is an exception 
	that opens a debugger, while other Morphs wait for the mutex."

	| notFound result |
	notFound := false.
	mutex critical: [
		self ensureTerminatedProcessAt: anExampleReference.
		result := dictionary 
			removeKey: anExampleReference 
			ifAbsent: [notFound := true]].
	notFound ifTrue: [dictionary errorKeyNotFound: anExampleReference].
	^ result