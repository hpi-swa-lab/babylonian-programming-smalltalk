private - ui
addReceiverConstructorMorph

	| model |
	self example receiverConstructor ifNotNil: [
		self addMorphBack: 'self: ' asMorph.
		
		model := BPStringValueModel new
			string: (self example receiverConstructor isSymbol ifTrue: [self example receiverConstructor printString] ifFalse: [self example receiverConstructor]);
			onChangeBlock: [:str | 
				self example receiverConstructor: str.
				self exampleContentChanged];
			onAcceptBlock: [:str |
				self containingBrowser codeTextMorph accept];
			yourself.
		self addMorphBack: (self editFieldFor: model text: #string onChange: #string: onAccept: #acceptContent:)]