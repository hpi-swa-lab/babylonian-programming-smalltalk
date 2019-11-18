initialize-release
createMorphs

	| replacementScriptMorph replacementScript exampleSelectionMorph removeButton |
	self removeAllMorphs.
	replacementScript := self annotation ifNil: [''] ifNotNil: [:a | a replacementScript asString].
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
			(SystemNavigation default allExamples collect: [:e | e uniqueIdentifier])];
		model: (BPObjectValueModel new
			object: (self annotation ifNotNil: [:a | a exampleName] ifNil: ['']);
			onChangeBlock: [:exampleName | 
				self annotation exampleName: exampleName.
				self codeContentChanged]);
		yourself.
		
	removeButton := self newRemoveButton.
	removeButton 
		actionSelector: #removeButtonClicked;
		target: self.	
		
	self 
		addMorphBack: replacementScriptMorph;
		addMorphBack: exampleSelectionMorph;
		addMorphBack: removeButton.