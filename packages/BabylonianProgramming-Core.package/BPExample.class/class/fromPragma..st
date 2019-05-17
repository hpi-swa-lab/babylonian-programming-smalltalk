instance creation
fromPragma: aPragma

	| newExample |
	newExample := self new
		method: aPragma method;
		exampleName: aPragma arguments first;
		yourself.

	(aPragma keyword beginsWith: 'exampleNamed:self:') 
		ifTrue: [newExample 
			receiverConstructor: (aPragma arguments second);
			arguments: (aPragma arguments allButFirst: 2)]
		ifFalse: [newExample arguments: aPragma arguments allButFirst].
		
	^ newExample

