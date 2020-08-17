private - ui
addArgumentScriptMorphs

	| argumentScripts editField |
	self example argumentScripts ifNotEmpty: [
		self addMorphBack: 'given: ' asMorph.

		argumentScripts := self example argumentScripts.
		(1 to: argumentScripts size) 
			do: [:index |
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
			separatedBy: [
				self addMorphBack: 'and: ' asMorph.]]