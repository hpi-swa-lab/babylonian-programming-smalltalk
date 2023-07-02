private
updateFrom: traces
	
	self 
		removeLinesWithoutCurrentTrace: traces;
		updateLabelMorphIfNecessary;
		updateExpressionMorphIfNecessary.
		
	self relevantTracesOf: traces do: [:aTrace | self updateResultsFrom: aTrace.].