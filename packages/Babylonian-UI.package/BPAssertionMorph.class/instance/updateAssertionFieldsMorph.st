private - ui
updateAssertionFieldsMorph
	
	| assertionScript assertionScriptMorph exampleSelectionMorph |
	assertionFieldsMorph ifNotNil: [assertionFieldsMorph abandon].
	assertionFieldsMorph := Morph new
		color: Color transparent;
		changeTableLayout;
		cellPositioning: #topLeft;
		listDirection: #leftToRight;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		yourself.
		
	assertionScript := self annotation ifNil: [''] ifNotNil: [:anAnnotation | anAnnotation assertion asString].
	assertionScript := assertionScript copyFrom: 2 to: (assertionScript size - 1 max: 1). "Removes the square brackets"
	assertionScriptMorph := self 
		editFieldInitialContent: assertionScript
		onChange: [:str | 
			self annotation assertion: ('[{1}]' format: {str}).
			self codeContentChanged]
		onAccept: [:str | 
			self containingBrowser codeTextMorph accept].
	assertionScriptMorph balloonText: 'Write code to check the probed value. The value is available through the `result` variable. The code should return a Boolean value.'.
		
	exampleSelectionMorph := self newExampleSelectionFieldMorph
		balloonText: 'Click to select an example the assertion should be scoped to. The assertion will only be checked for the selected example.';
		yourself.
		
	assertionFieldsMorph 
		addMorphBack: assertionScriptMorph;
		addMorphBack: exampleSelectionMorph.
		
	
	widgetsMorph addMorphBack: assertionFieldsMorph.