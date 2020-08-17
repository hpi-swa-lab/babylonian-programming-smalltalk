accessing
at: anExampleReference ifAbsent: absentBlock

	^ mutex critical: [dictionary at: anExampleReference ifAbsent: absentBlock]