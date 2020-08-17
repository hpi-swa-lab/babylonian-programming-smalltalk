instance creation
fromPragma: aPragma

	| newExample remainingArguments |
	newExample := self new
		method: aPragma method;
		exampleName: aPragma arguments first;
		yourself.

	remainingArguments := aPragma arguments allButFirst.
	(aPragma keyword includesSubstring: 'active:') 
		ifTrue: [newExample isActive: aPragma arguments second.
			remainingArguments := remainingArguments allButFirst.].

	(aPragma keyword includesSubstring: 'self:') 
		ifTrue: [newExample 
			receiverConstructor: remainingArguments first;
			argumentScripts: remainingArguments allButFirst]
		ifFalse: [newExample argumentScripts: remainingArguments].	
		
	^ newExample

