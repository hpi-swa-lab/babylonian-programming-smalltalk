private
updateFrom: traces
	
	| lineMorph |
	self 
		removeLinesWithoutCurrentTrace: traces;
		updateExpressionMorphIfNecessary.
	self relevantTracesOf: traces do: [:aTrace | | valuesMorph scrollPane |
			lineMorph := self ensureLineMorphFor: aTrace.
			scrollPane := (lineMorph submorphNamed: #scrollWrapper) submorphNamed: #scrollPane.
			
			self updateErrorIndicatorMorphFrom: lineMorph for: aTrace.

			scrollPane scroller removeAllMorphs.				
		
			valuesMorph := (self valuesMorphFor: aTrace)
				hResizing: #shrinkWrap;
				yourself.
				
			scrollPane scroller addMorph: valuesMorph.
			scrollPane height: valuesMorph height + self scrollBarSize.
		
			self updateVisualizationMorphInside: scrollPane over: valuesMorph for: aTrace].