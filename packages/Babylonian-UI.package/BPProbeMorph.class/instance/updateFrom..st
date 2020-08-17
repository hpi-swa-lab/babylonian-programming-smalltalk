private
updateFrom: traces

	| exampleLabelMorph lineMorph removeButton exploreButton tracesMorph errorIndicatorMorph |
	self removeAllMorphs.
	
	tracesMorph := self newTracesMorph.
	
	self relevantTracesOf: traces do: [:t | | valuesMorph |
			lineMorph := self newExampleLineMorph.
			
			exampleLabelMorph := self newExampleLabelMorphFor: t.
			
			t exampleErrored 
				ifTrue: [errorIndicatorMorph := self createErrorIndicatorFor: t]
				ifFalse: [errorIndicatorMorph := nil].
				
			valuesMorph := (self valuesTextFor: t) asMorph.
			valuesMorph lock.
			valuesMorph hResizing: #shrinkWrap.
			valuesMorph := self checkAndConvertValuesMorphIfNecessary: valuesMorph.
							
			exploreButton := IconicButton new.
			exploreButton 
				labelGraphic: (BPIcons searchIcon scaledToSize: self iconSize);
				color: Color transparent;
				borderWidth: 0;
				extent: (exploreButton extent x * 0.9)@(exploreButton extent y + self scrollBarSize).
			exploreButton 
				actionSelector: #exploreButtonClickedFor:;
				arguments: {t valuesForProbeId: self id};
				target: self.
			
			lineMorph 
				addMorphBack: exploreButton;
				in: [:l | errorIndicatorMorph ifNotNil: [l addMorphBack: errorIndicatorMorph]];
				addMorphBack: exampleLabelMorph;
				addMorphBack: valuesMorph.
				
			tracesMorph addMorphBack: lineMorph].
		
	self addMorphBack: tracesMorph.
		
	removeButton := self newRemoveButton.
	removeButton 
		actionSelector: #removeButtonClicked;
		target: self.
	self addMorphBack: removeButton.
		
	self owner ifNotNil: [
		"This may be called before we are actually part of a text layout"
		self owner paragraph composeAll.
		self owner updateFromParagraph]