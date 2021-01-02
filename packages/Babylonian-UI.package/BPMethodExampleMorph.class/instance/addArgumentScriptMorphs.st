private - ui
addArgumentScriptMorphs
	
	| editField |
	self example argumentNames withIndexDo: [:argumentName :index |
		self addSimpleTextMorph: (argumentName , ': ').

		"Editing field"
		editField := self
			editFieldInitialContent: (self example argumentScriptStringAt: index)
			onChange: [:str | 
				self example argumentScripts at: index put: str.
				self codeContentChanged]
			onAccept: [:str |
				self containingBrowser saveMethodWithExamples.
				false "Do not continue handling this morphs edit"].
		self addMorphBack: editField.
		
		self addLiveSpecimenSelectionMorphFor: editField 
			withTarget: [
				self selectLiveSpecimenThen: [:specimen |.
					self example argumentScripts at: index put: specimen.
					self codeContentChanged.
					editField setText: (self example argumentScriptStringAt: index)]];
			actionSelector: #value;
			yourself)].
