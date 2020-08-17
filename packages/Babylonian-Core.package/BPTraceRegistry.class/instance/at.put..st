accessing
at: anExampleReference put: aTrace

	^ mutex critical: [
		self ensureTerminatedProcessAt: anExampleReference.
		dictionary at: anExampleReference put: aTrace]