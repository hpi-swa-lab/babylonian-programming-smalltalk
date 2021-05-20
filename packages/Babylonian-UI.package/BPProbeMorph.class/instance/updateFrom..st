private
updateFrom: traces
	
	| lineMorph errorIndicatorMorph |
	self 
		removeLinesWithoutCurrentTrace: traces;
		updateLabelMorphIfNecessary;
		updateExpressionMorphIfNecessary.
	
	self relevantTracesOf: traces do: [:aTrace | | valuesMorph scrollPane |
			lineMorph := self ensureLineMorphFor: aTrace.
			scrollPane := (lineMorph submorphNamed: #scrollWrapper) submorphNamed: #scrollPane.
			errorIndicatorMorph := lineMorph submorphNamed: #errorIndicatorHolder.
			
			aTrace exampleErrored 
				ifTrue: [errorIndicatorMorph submorphs ifEmpty: [
							errorIndicatorMorph addMorph: (self createErrorIndicatorFor: aTrace)]]
				ifFalse: [errorIndicatorMorph 
							removeAllMorphs;
							extent: 0@0].

			scrollPane scroller removeAllMorphs.				
		
			valuesMorph := (self valuesMorphFor: aTrace)
				hResizing: #shrinkWrap;
				yourself.
		
			scrollPane scroller addMorph: valuesMorph.
			scrollPane height: valuesMorph height + self scrollBarSize].