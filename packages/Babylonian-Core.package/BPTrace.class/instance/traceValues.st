accessing
traceValues
	
	"Reduce does not work for empty collections, so we have to add an extra conditional"
	self probes values ifEmpty: [^ self probes values].
	^ (self probes values fold: [:a :b | a , b]) sorted: [:a | a chronologicalPosition] ascending
	
	