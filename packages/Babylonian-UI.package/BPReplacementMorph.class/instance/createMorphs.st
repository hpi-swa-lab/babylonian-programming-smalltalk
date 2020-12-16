initialize-release
createMorphs

	| replacementScriptMorph replacementScript exampleSelectionMorph removeButton |
	self removeAllMorphs.
	replacementScript := self annotation ifNil: [''] ifNotNil: [:anAnnotation | anAnnotation replacementScript asString].
	replacementScript := replacementScript copyFrom: 2 to: (replacementScript size - 1 max: 1). "Removes the square brackets"
		
	replacementScriptMorph := self 
		editFieldInitialContent: replacementScript
		onChange: [:str | 
			self annotation replacementScript: ('[{1}]' format: {str}).
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
		
	removeButton := self newRemoveButton.
		
	self 
		addMorphBack: replacementScriptMorph;
		addMorphBack: exampleSelectionMorph;
		addMorphBack: removeButton.