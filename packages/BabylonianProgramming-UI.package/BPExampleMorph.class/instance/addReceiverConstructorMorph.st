private - ui
addReceiverConstructorMorph

	self example receiverConstructor ifNotNil: [
		self addMorphBack: 'self: ' asMorph.
		self addMorphBack: self example receiverConstructor printString asText asMorph]