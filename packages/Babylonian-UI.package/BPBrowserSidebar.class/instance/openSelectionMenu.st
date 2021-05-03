bottom bar
openSelectionMenu
	
	| selection selectedEntries callgraph |
	selection := MenuMorph 
		chooseFrom: {'find common ancestor (ignoring context)' . 'find common ancestor (with context)' . 'explore' . 'clear'}
		lines: {2}
		title: 'select action'.
	selection == 0 ifTrue: [^ self].
	
	callgraph := self selectedExample currentCallgraph.

	selectedEntries := BPSelectedCallgraphEntries forExample: self selectedExample andCallgraph: callgraph.

	selection == 3 ifTrue: [^ selectedEntries explore].
	selection == 4 ifTrue: [selectedEntries removeAll. ^ self changed: #bottomBarText].
	
	callgraph
		interactiveAncestorSearchFor: selectedEntries asOrderedCollection
		ignoringInvocationCounts: selection == 1
		browseMethodBlock: [:methodReference | self triggerEvent: #browseMethod with: methodReference]