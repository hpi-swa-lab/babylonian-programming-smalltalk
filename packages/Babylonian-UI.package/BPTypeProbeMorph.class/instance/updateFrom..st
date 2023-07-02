private
updateFrom: traces
	
	tracesMorph removeAllMorphs.
	
	self relevantTracesOf: traces do: [:trace | self updateResultsFrom: trace].
	