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
			self acceptChangesAtSource].
	replacementScriptMorph balloonText: 'write code that will be executed instead of the selected code'.
		
	exampleSelectionMorph := self newExampleSelectionFieldMorph
		balloonText: 'Click to select an example the replacement should be scoped to. The replacement expression will only be executed for the selected example.';
		yourself.
	removeButton := self newRemoveButton
		balloonText: 'click to remove the replacement';
		yourself.
		
	self 
		addMorphBack: replacementScriptMorph;
		addMorphBack: exampleSelectionMorph;
		addMorphBack: removeButton.