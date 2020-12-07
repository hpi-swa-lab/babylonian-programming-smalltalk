initialize-release
initializeFromPragma: aPragma
	
	self 
		method: aPragma method;
		exampleName: aPragma arguments first;
		expectedResult: aPragma arguments second.
		
	(aPragma keyword includesSubstring: 'active:') ifTrue: [
		self isActive: aPragma arguments third].