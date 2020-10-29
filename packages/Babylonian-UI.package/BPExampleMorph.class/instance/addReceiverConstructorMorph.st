private - ui
addReceiverConstructorMorph
	
	self addMorphBack: 'self: ' asMorph.
	
	self addMorphBack: (self
			editFieldInitialContent: (self example receiverConstructor isSymbol 
				ifTrue: [self example receiverConstructor printString] 
				ifFalse: [self example receiverConstructor])
			onChange: [:str | 
				self example receiverConstructor: str.
				self codeContentChanged]
			onAccept: [:str |
				self containingBrowser codeTextMorph accept])