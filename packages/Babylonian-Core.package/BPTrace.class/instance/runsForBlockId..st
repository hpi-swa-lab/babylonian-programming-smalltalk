accessing
runsForBlockId: aBlockId
	
	^ blockRecord at: aBlockId ifAbsent: [#()]