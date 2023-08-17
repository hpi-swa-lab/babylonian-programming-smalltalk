accessing
argumentNames
	"Caches argument names as parsing them requires accessing the source files, which is expensive."
	
	| parts |
	(cachedArgumentNames isNil or: [cachedArgNamesKey ~~ self method]) ifTrue: [ 
		parts := self method methodClass formalHeaderPartsFor: self method selector.
		cachedArgumentNames := (1 to: self method selector numArgs) collect: [:anIndex | 
			parts at: (4 * anIndex)]].
	^ cachedArgumentNames
	
	