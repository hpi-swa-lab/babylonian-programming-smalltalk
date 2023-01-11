accessing
resultsForAssertionId: anAssertionId

	^ mutex critical: [self assertions at: anAssertionId ifAbsent: [#()]]