private - ui
addReceiverConstructorMorph

	| model |
	self example receiverConstructor ifNotNil: [
		self addMorphBack: 'self: ' asMorph.
		
		model := BPStringValueModel new
			string: self example receiverConstructor printString;
			onChangeBlock: [:str | 
				self example receiverConstructor: (Compiler evaluate: str).
				self exampleContentChanged];
			yourself.
		self addMorphBack: (self editFieldFor: model text: #string onChange: #string:)]