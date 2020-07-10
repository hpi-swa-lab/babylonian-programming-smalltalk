private - ui
relevantTracesOf: traces do: aBlock

	^ (traces select: [:trace | (trace resultsForAssertionId: self id) notEmpty]) do: aBlock