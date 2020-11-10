bottom bar
openSelectionMenu
	
	| selection selectedEntries ancestor callgraph continue |
	selection := MenuMorph 
		chooseFrom: {'find common ancestor (ignoring context)' . 'find common ancestor (with context)' . 'explore' . 'clear'}
		lines: {2}
		title: 'select action'.
	selection == 0 ifTrue: [^ self].
	
	callgraph := self selectedExample currentCallgraph.

	selectedEntries := BPSelectedCallgraphEntries forExample: self selectedExample andCallgraph: callgraph.

	selection == 3 ifTrue: [^ selectedEntries explore].
	selection == 4 ifTrue: [selectedEntries removeAll. ^ self changed: #bottomBarText].
	
	selectedEntries := selectedEntries asOrderedCollection collect: #selfOrParentMethodBlockOfBPProbeOrAssertion.
	
	ancestor := callgraph 
		commonAncestorOf: selectedEntries 
		ignoringInvocationCounts: selection == 1.
	ancestor ifNil: [^ UIManager default inform: 'No common ancestor found'].
	
	continue := UIManager default chooseFrom: {'browse' . 'show invocation paths' . 'cancel'} title: ancestor asString, String cr, String cr, 'is the ancestor of all selected entries. Do you also want to calculate all unique invocation paths from that ancestor to selected entries?'.
	
	continue caseOf: {
		[1] -> [self triggerEvent: #browseMethod with: ancestor methodReference].
		[2] -> [| paths sortedPathsByChild |
			paths := callgraph pathsBetween: ancestor andChildren: selectedEntries.
			sortedPathsByChild := Dictionary new.
			paths do: [:path | (sortedPathsByChild at: path last ifAbsentPut: [OrderedCollection new]) addLast: path].
			sortedPathsByChild explore]} otherwise: [^ self]