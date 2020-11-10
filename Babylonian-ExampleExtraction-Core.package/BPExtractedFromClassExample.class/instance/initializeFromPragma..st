as yet unclassified
initializeFromPragma: aPragma
	
	| remainingArguments |
	super initializeFromPragma: aPragma.

	remainingArguments := (aPragma keyword includesSubstring: 'active:') 
		ifTrue: [aPragma arguments allButFirst: 2]
		ifFalse: [aPragma arguments allButFirst].

	(aPragma keyword includesSubstring: 'extractedClassName') 
		ifTrue: [self 
			extractedClassName: remainingArguments first;
			extractedMethodSelector: remainingArguments second]