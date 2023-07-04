private - ui
updateResultsFrom: aRelevantTrace
	
	| scrollPane lineMorph valuesMorph |
	lineMorph := self ensureLineMorphFor: aRelevantTrace.
	scrollPane := (lineMorph submorphNamed: #scrollWrapper) submorphNamed: #scrollPane.
	valuesMorph := self newValuesMorphTracing: aRelevantTrace.
	
	scrollPane scroller removeAllMorphs.
	self updateErrorIndicatorMorphFrom: lineMorph for: aRelevantTrace.
	lineMorph setProperty: #bpValuesMorph toValue: valuesMorph.

	scrollPane scroller addMorph: valuesMorph.
	scrollPane height: valuesMorph height + self scrollBarSize.
	
	self updateVisualizationMorphInside: scrollPane over: valuesMorph for: aRelevantTrace