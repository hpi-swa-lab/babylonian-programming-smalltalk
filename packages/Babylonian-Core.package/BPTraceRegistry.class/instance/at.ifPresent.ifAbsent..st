accessing
at: anExampleReference ifPresent: presentBlock ifAbsent: absentBlock

	^ mutex critical: [dictionary at: anExampleReference ifPresent: presentBlock ifAbsent: absentBlock]