initialize-release
initializeFromPragma: aPragma
	
	| remainingArguments |
	super initializeFromPragma: aPragma.

	remainingArguments := (aPragma keyword includesSubstring: 'active:') 
		ifTrue: [aPragma arguments allButFirst: 2]
		ifFalse: [aPragma arguments allButFirst].

	(aPragma keyword includesSubstring: 'self:') 
		ifTrue: [self 
			receiverConstructor: remainingArguments first;
			argumentScripts: remainingArguments allButFirst]
		ifFalse: [self argumentScripts: remainingArguments].	