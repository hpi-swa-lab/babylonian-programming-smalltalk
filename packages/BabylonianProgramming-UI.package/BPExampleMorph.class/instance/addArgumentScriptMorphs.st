private - ui
addArgumentScriptMorphs

	self example argumentScripts ifNotEmpty: [
		self addMorphBack: 'given: ' asMorph.
		self addMorphBack: self example argumentScripts first printString asText asMorph.
	
		self example argumentScripts copyWithoutFirst do: [:script |
			self addMorphBack: 'and: ' asMorph.
			self addMorphBack: script printString asText asMorph]]