initialize-release
createMorphs

	| replacementScriptMorph replacementScript removeButton |
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
		
	removeButton := self newRemoveButton.
	removeButton 
		actionSelector: #removeButtonClicked;
		target: self.	
		
	self 
		addMorphBack: replacementScriptMorph;
		addMorphBack: removeButton.