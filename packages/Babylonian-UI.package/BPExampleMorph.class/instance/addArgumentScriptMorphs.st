private - ui
addArgumentScriptMorphs

	| argumentScripts |
	self example argumentScripts ifNotEmpty: [
		self addMorphBack: 'given: ' asMorph.

		argumentScripts := self example argumentScripts.
		(1 to: argumentScripts size) 
			do: [:index |
				self addMorphBack: (self
					editFieldInitialContent: (argumentScripts at: index)
					onChange: [:str | 
						self example argumentScripts at: index put: str.
						self codeContentChanged]
					onAccept: [:str |
						self containingBrowser saveMethodWithExamples.
						false "Do not continue handling this morphs edit"])]
			separatedBy: [
				self addMorphBack: 'and: ' asMorph.]]