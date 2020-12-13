initialize-release
initializeFromPragma: aPragma
	
	| remainingArguments |
	super initializeFromPragma: aPragma.

	remainingArguments := (aPragma keyword includesSubstring: 'active:') 
		ifTrue: [aPragma arguments allButFirst: 3]
		ifFalse: [aPragma arguments allButFirst: 2].

	(aPragma keyword includesSubstring: 'script:') 
		ifTrue: [self script: remainingArguments first]