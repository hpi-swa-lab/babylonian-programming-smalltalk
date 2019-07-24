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
					string: script printString;
					onChangeBlock: [:str | 
						self example argumentScripts at: index put: (Compiler evaluate: str).
						self exampleContentChanged];
					yourself.
				self addMorphBack: (self editFieldFor: model text: #string onChange: #string:)]
			separatedBy: [
				self addMorphBack: 'and: ' asMorph.]]