accessing
at: anExampleReference

	^ mutex critical: [dictionary at: anExampleReference]