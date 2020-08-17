accessing
resultsForAssertionId: anAssertionId

	^ self assertions at: anAssertionId ifAbsent: [#()]