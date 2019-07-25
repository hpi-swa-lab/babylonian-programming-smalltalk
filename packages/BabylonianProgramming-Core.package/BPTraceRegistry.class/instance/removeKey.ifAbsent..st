accessing
removeKey: anExampleReference ifAbsent: absentBlock

	^ mutex critical: [dictionary removeKey: anExampleReference ifAbsent: absentBlock]