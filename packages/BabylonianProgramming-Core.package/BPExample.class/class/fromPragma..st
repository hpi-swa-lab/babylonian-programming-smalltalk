instance creation
fromPragma: aPragma

	^ self new
		method: aPragma method;
		exampleName: aPragma arguments first;
		arguments: aPragma arguments allButFirst;
		yourself