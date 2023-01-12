accessing
runsForBlockId: aBlockId
	
	^ mutex critical: [blockRecord at: aBlockId ifAbsent: [#()]]