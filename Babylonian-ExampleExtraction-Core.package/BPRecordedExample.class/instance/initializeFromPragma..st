initialize-release
initializeFromPragma: aPragma

	| remainingArguments |
	super initializeFromPragma: aPragma.

	remainingArguments := (aPragma keyword includesSubstring: 'active:') 
		ifTrue: [aPragma arguments allButFirst: 2]
		ifFalse: [aPragma arguments allButFirst].

	(aPragma keyword includesSubstring: 'specimenID:') 
		ifTrue: [self specimenID: remainingArguments first asSymbol]