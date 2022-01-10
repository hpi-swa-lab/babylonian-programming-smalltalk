class list
classIconAt: anIndex

	| baseIcon examplesIcon combinedIcon |
	self class showClassIcons
		ifFalse: [^ nil].

	baseIcon := super classIconAt: anIndex.
	
	examplesIcon := (self classList at: anIndex) 
		ifNotNil: [:className | self exampleIconForClass: (Smalltalk classNamed: className withBlanksTrimmed asSymbol)].
	examplesIcon := (examplesIcon ifNil: [ToolIcons blank]) scaledToSize: 12.
	
	baseIcon ifNil: [^ examplesIcon].
	
	combinedIcon := Form extent: 24@12 depth: 32.
	combinedIcon copy: (0@0 extent: 12@12) from: baseIcon to: 0@0 rule: Form over.
	combinedIcon copy: (0@0 extent: 12@12) from: examplesIcon to: 12@0 rule: Form over.
	
	^ combinedIcon