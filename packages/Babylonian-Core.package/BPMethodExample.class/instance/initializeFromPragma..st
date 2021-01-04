initialize-release
initializeFromPragma: aPragma
	
	| remainingArguments containsSelf containsResult|
	super initializeFromPragma: aPragma.

	remainingArguments := (aPragma keyword includesSubstring: 'active:') 
		ifTrue: [aPragma arguments allButFirst: 2]
		ifFalse: [aPragma arguments allButFirst].

	containsSelf := aPragma keyword includesSubstring: 'self:'.
	containsResult := aPragma keyword includesSubstring: 'expectedResult:'.
	containsSelf 
		ifTrue: [
			self receiverConstructor: remainingArguments first.
			containsResult 
				ifTrue: [self argumentScripts: (remainingArguments allButFirst) allButLast]
				ifFalse: [self argumentScripts: remainingArguments allButFirst]]
		ifFalse: [
			containsResult 
				ifTrue: [self argumentScripts: remainingArguments allButLast]
				ifFalse: [self argumentScripts: remainingArguments]].