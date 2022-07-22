accessing
traceValues

	"Reduce does not work for empty collections, so we have to add an extra conditional"
	| probesAndAssertions |
	probesAndAssertions := self probes asCollection.
	probesAndAssertions addAll: self assertions asCollection.
	probesAndAssertions ifEmpty: [^ probesAndAssertions values ].
	^ (probesAndAssertions values fold: [:a :b | a , b]) sorted: [:a | a chronologicalPosition] ascending.
	
	