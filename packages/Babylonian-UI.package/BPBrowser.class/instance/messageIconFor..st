message list
messageIconFor: aSelector
	 
	| baseIcon exampleIcon combinedIcon |
	baseIcon := super messageIconFor: aSelector.
	
	exampleIcon := self exampleIconForSelector: aSelector.
	exampleIcon ifNil: [^ baseIcon].
	exampleIcon := exampleIcon scaledToSize: 12.
	
	baseIcon ifNil: [^ exampleIcon].
	
	combinedIcon := Form extent: 24@12 depth: 32.
	combinedIcon copy: (0@0 extent: 12@12) from: baseIcon to: 0@0 rule: Form over.
	combinedIcon copy: (0@0 extent: 12@12) from: exampleIcon to: 12@0 rule: Form over.
	
	^ combinedIcon