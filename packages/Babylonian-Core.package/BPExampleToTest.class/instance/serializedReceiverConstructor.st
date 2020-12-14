private - serializing
serializedReceiverConstructor
	| constructor |

	constructor := self example receiverConstructor.
	^ constructor isSymbol ifTrue: [
		self example method methodClass asString, ' ', constructor
	] ifFalse: [constructor]