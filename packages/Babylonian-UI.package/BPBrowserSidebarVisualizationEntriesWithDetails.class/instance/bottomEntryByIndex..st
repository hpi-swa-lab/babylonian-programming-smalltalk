list bottom
bottomEntryByIndex: aNumber

	^ self bottomEntries at: aNumber ifAbsent: [nil]