private - ui
addArgumentScriptMorphs
	
	| editField |
	self example argumentNames withIndexDo: [:argumentName :index |
		self addMorphBack: (argumentName , ': ') asMorph.

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
		
		"Live specimen selection"
		self addMorphBack: (SimpleButtonMorph new
			height: self fontHeight;
			color: self color;
			borderWidth: 2;
			label: 's';
			target: [
				self selectLiveSpecimenThen: [:specimen |.
					self example argumentScripts at: index put: specimen.
					self codeContentChanged.
					editField setText: (self example argumentScriptStringAt: index)]];
			actionSelector: #value;
			yourself)]