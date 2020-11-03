toolbuilder
highlightMethod: aMethodReference
	
	self callgraph
		detect: [:each | each class == BPCallgraphEntryEnter and: [each getClass == aMethodReference actualClass] and: [each getSelector == aMethodReference selector]] 
		ifFound: [:entry | model selectEntry: entry]
		ifNone: [UIManager default inform: 'Method not found']