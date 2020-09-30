accessing
argumentScriptStringAt: index

	| value |
	value := self argumentScripts at: index.
	^ (self isLiveSpecimenReference: value)
		ifTrue: [(self resolveLiveSpecimen: value) printString]
		ifFalse: [value]