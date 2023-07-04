ui
addValues
	
	| times average count stdev |
	times := values collect: [:v | v tracedValue].
	count := times size.
	average := times average.
	stdev := self standardDeviation: times.
	self addMorphBack: ('{1} executions ({2} ms +/- {3})' 
			format: {count . average . stdev}) asText asMorph