initialize-release
initializeFromPragma: aPragma
	
	self 
		method: aPragma method;
		exampleName: aPragma arguments first.
		
	(aPragma keyword includesSubstring: 'active:') ifTrue: [
		self isActive: aPragma arguments second].