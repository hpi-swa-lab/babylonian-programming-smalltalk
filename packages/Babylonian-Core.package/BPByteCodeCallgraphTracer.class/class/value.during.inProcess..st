process local
value: anObject during: aBlock inProcess: aProcess

	| old |
	old := aProcess tracer.
	aProcess tracer: anObject.
	^ aBlock ensure: [aProcess tracer: old]