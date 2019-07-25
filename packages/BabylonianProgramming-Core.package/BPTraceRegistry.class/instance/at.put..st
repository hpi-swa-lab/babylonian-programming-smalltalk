accessing
at: anExampleReference put: aTrace

	^ mutex critical: [dictionary at: anExampleReference put: aTrace]