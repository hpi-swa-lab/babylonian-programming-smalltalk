private
updateFrom: traces
	
	| lineMorph |
	self 
		removeLinesWithoutCurrentTrace: traces;
		updateLabelMorphIfNecessary;
		updateExpressionMorphIfNecessary.
		
	self relevantTracesOf: traces do: [:aTrace | | valuesMorph scrollPane |
			lineMorph := self ensureLineMorphFor: aTrace.
			scrollPane := (lineMorph submorphNamed: #scrollWrapper) submorphNamed: #scrollPane.
			
			self updateErrorIndicatorMorphFrom: lineMorph for: aTrace.

			scrollPane scroller removeAllMorphs.				
		
			valuesMorph := (self valuesMorphFor: aTrace)
				color: self defaultColor;
				hResizing: #shrinkWrap;
				yourself.
			lineMorph setProperty: #bpValuesMorph toValue: valuesMorph.
				
			scrollPane scroller addMorph: valuesMorph.
			scrollPane height: valuesMorph height + self scrollBarSize.
			
			self updateVisualizationMorphInside: scrollPane over: valuesMorph for: aTrace].