list top
topEntryByIndex: aNumber
	
	^ self topEntries at: aNumber ifAbsent: [nil]