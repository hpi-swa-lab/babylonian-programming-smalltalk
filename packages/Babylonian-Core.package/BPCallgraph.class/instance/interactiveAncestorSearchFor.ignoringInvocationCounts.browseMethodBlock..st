finding ancestors
interactiveAncestorSearchFor: aCollection ignoringInvocationCounts: aBoolean browseMethodBlock: aBlock
	
	| selectedEntries ancestor continue |
	selectedEntries := aCollection asOrderedCollection.
	
	ancestor := self 
		commonAncestorOf: (selectedEntries collect: #selfOrParentMethodBlockOfBPProbeOrAssertion)
		ignoringInvocationCounts: aBoolean.
	ancestor ifNil: [^ UIManager default inform: 'No common ancestor found'].
	
	continue := UIManager default chooseFrom: {'browse' . 'show invocation paths' . 'cancel'} title: ancestor asString, String cr, String cr, 'is the ancestor of all selected entries. Do you also want to calculate all unique invocation paths from that ancestor to selected entries?'.
	
	continue caseOf: {
		[1] -> [aBlock value: ancestor methodReference].
		[2] -> [| paths sortedPathsByChild |
			paths := self pathsBetween: ancestor andChildren: selectedEntries.
			sortedPathsByChild := Dictionary new.
			paths do: [:path | (sortedPathsByChild at: path last ifAbsentPut: [OrderedCollection new]) addLast: path].
			sortedPathsByChild explore]} otherwise: [^ self]