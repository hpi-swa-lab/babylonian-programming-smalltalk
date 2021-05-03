initialize-release
reset

	depth := 0.
	
	"Streams are faster than OrderedCollections:
	
	c := (OrderedCollection new: 400000000).
	w := (Array new: 400000000) writeStream.
	[c addLast: 42] vs: [w nextPut: 42] '
		54,700,000 per second. 18.3 nanoseconds per run. 0 % GC time.
	vs. 	76,200,000 per second. 13.1 nanoseconds per run. 0 % GC time.'"
	events := Array new writeStream.
	self flag: #todo. "Use Array new: XXX with a sensible default size"