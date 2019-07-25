accessing
removeKey: anExampleReference ifAbsent: absentBlock

	^ mutex critical: [
		self ensureTerminatedProcessAt: anExampleReference.
		dictionary removeKey: anExampleReference ifAbsent: absentBlock]