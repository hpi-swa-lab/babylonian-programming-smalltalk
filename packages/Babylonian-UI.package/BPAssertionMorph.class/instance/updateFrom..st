private
updateFrom: traces

	| assertionScriptMorph assertionScript exampleSelectionMorph removeButton editFieldsMorph tracesMorph |
	self removeAllMorphs.
	
	editFieldsMorph := Morph new
		color: Color transparent;
		changeTableLayout;
		cellPositioning: #topLeft;
		listDirection: #leftToRight;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		yourself.
	
	assertionScript := self annotation ifNil: [''] ifNotNil: [:a | a assertion asString].
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
			(SystemNavigation default allExamples collect: [:e | e uniqueIdentifier])];
		model: (BPObjectValueModel new
			object: (self annotation ifNotNil: [:a | a exampleName] ifNil: ['']);
			onChangeBlock: [:exampleName | 
				self annotation exampleName: exampleName.
				self codeContentChanged]);
		yourself.
		
	removeButton := self newRemoveButton.
	
	editFieldsMorph 
		addMorphBack: assertionScriptMorph;
		addMorphBack: exampleSelectionMorph;
		addMorphBack: removeButton.
	self addMorphBack: editFieldsMorph.
	

	"Now to the results"
	tracesMorph := self newTracesMorph.
	self relevantTracesOf: traces do: [:t | | lineMorph valuesMorph |
		lineMorph := self newExampleLineMorph.
		lineMorph addMorphBack: (self newExampleLabelMorphFor: t).
		valuesMorph := self newExampleLineMorph.
		
		(t resultsForAssertionId: self annotation id) 
			ifEmpty: [lineMorph addMorphBack: ToolIcons testGray asMorph]
			ifNotEmpty: [:results |
				results do: [:result | | iconMorph |
					iconMorph := (result tracedValue ifTrue: [ToolIcons testGreen] ifFalse: [ToolIcons testOrange]) asMorph.
					valuesMorph addMorphBack: iconMorph]].
			
		"The following is necessary to determine the actual width of the morph
		after it wrapped around its submorphs"
		valuesMorph layoutChanged; fullBounds.
		
		valuesMorph := self checkAndConvertValuesMorphIfNecessary: valuesMorph.
		lineMorph addMorphBack: valuesMorph.
		tracesMorph addMorphBack: lineMorph].
	tracesMorph submorphs ifNotEmpty: [
		self addMorphBack: tracesMorph].
	