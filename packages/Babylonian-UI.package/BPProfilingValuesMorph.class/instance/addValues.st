ui
addValues
	
	| times average count stdev |
	times := values collect: [:v | v tracedValue].
	count := times size.
	average := times average roundTo: 0.01.
	stdev := self standardDeviation: times.
	self addMorphBack: ('{1} executions ({2} ms +/- {3})' 
			format: {count . average . stdev}) asText asMorph