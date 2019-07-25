accessing
removeKey: anExampleReference

	^ mutex critical: [
		self ensureTerminatedProcessAt: anExampleReference.
		dictionary removeKey: anExampleReference]