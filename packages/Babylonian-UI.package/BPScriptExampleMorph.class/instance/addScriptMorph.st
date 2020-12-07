as yet unclassified
addScriptMorph
	
	| editField |
	self addMorphBack: 'script: ' asMorph.
	
	editField := (self
			editFieldInitialContent: self example script
			onChange: [:str | 
				self example script: str.
				self codeContentChanged]
			onAccept: [:str |
				self containingBrowser codeTextMorph accept]).
	self addMorphBack: editField.