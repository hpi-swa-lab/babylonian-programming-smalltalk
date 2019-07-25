accessing
removeKey: anExampleReference

	^ mutex critical: [dictionary removeKey: anExampleReference]