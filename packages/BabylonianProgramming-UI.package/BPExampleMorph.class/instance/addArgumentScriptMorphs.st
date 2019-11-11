private - ui
addArgumentScriptMorphs

	| argumentScripts |
	self example argumentScripts ifNotEmpty: [
		self addMorphBack: 'given: ' asMorph.

		argumentScripts := self example argumentScripts.
		(1 to: argumentScripts size) 
			do: [:index | | model script |
				script := argumentScripts at: index.
				model := BPStringValueModel new
					string: script asString;
					onChangeBlock: [:str | 
						self example argumentScripts at: index put: str.
						self exampleContentChanged];
					onAcceptBlock: [:str |
						self containingBrowser codeTextMorph accept]
					yourself.
				self addMorphBack: (self editFieldFor: model text: #string onChange: #string: onAccept: #acceptContent:)]
			separatedBy: [
				self addMorphBack: 'and: ' asMorph.]]