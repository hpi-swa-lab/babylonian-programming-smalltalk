accessing
argumentScriptStringAt: index

	| value |
	value := self argumentScripts at: index.
	^ value isLiveSpecimenReference
		ifTrue: [self receiverConstructor printString]
		ifFalse: [value]