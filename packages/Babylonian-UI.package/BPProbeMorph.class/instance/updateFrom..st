private
updateFrom: traces
	
	| lineMorph errorIndicatorMorph |
	self 
		removeLinesWithoutCurrentTrace: traces;
		updateExpressionMorphIfNecessary.
	
	self relevantTracesOf: traces do: [:t | | valuesMorph scrollPane |
			lineMorph := self ensureLineMorphFor: t.
			scrollPane := (lineMorph submorphNamed: #scrollWrapper) submorphNamed: #scrollPane.
			errorIndicatorMorph := lineMorph submorphNamed: #errorIndicatorHolder.
			
			t exampleErrored 
				ifTrue: [errorIndicatorMorph submorphs ifEmpty: [
							errorIndicatorMorph addMorph: (self createErrorIndicatorFor: t)]]
				ifFalse: [errorIndicatorMorph 
							removeAllMorphs;
							extent: 0@0].

			scrollPane scroller removeAllMorphs.				
		
			valuesMorph := (self valuesTextFor: t) asMorph
				lock;
				hResizing: #shrinkWrap;
				color: PluggableTextMorph basicNew userInterfaceTheme textColor;
				yourself.
		
			scrollPane scroller addMorph: valuesMorph.
			scrollPane height: valuesMorph height + self scrollBarSize].
		
	self owner ifNotNil: [
		"This may be called before we are actually part of a text layout"
		self owner paragraph composeAll.
		self owner updateFromParagraph]