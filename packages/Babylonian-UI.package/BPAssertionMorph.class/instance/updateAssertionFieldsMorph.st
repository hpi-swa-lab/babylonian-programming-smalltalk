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
		
	exampleSelectionMorph := BPSelectFieldMorph new
		optionsBlock: [
			{BPExampleSpecificScript allExamplesName} , 
			(SystemNavigation default allExamples collect: [:anExample | anExample uniqueIdentifier])];
		model: (BPObjectValueModel new
			object: (self annotation ifNotNil: [:anAnnotation | anAnnotation exampleName] ifNil: ['']);
			onChangeBlock: [:exampleName | 
				self annotation exampleName: exampleName.
				self codeContentChanged]);
		yourself.
		
	assertionFieldsMorph 
		addMorphBack: assertionScriptMorph;
		addMorphBack: exampleSelectionMorph.
		
	
	widgetsMorph addMorphBack: assertionFieldsMorph.