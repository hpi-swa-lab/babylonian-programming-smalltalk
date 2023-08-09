accessing
argumentScriptStringAt: index

	| value |
	value := self argumentScripts at: index.
	^ value isLiveSpecimenReference
		ifTrue: [value printString]
		ifFalse: [value]