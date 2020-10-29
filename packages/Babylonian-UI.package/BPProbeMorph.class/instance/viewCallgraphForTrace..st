private - ui
viewCallgraphForTrace: aTrace
	
	| values index callgraph explorer |
	values := aTrace valuesForProbeId: self id.
	index := UIManager default 
		chooseFrom: (values withIndexCollect: [:v :i | '#', i, ': ', (v tracedValue)]), {'at the top'}
		values: (values withIndexCollect: [:v :i | i]), {0}
		title: 'At which invocation do you want to open the callgraph?'.
	index ifNil: [^ self].
	
	callgraph := aTrace example traceWithCallgraphUsingByteCodeTracer eventsForTree.
	explorer := BPCallgraphExplorer open.
	explorer loadFromCallgraph: callgraph.
	index > 0 ifTrue: [ | entry n |
		n := 0.
		entry := callgraph babylonianEntries detect: [:each | 
			((each class == BPCallgraphEntryBPProbe) and: [each id == self id]) 
				ifTrue: [(n := n + 1) == index]
				ifFalse: [false]].
		explorer selectEntry: entry]