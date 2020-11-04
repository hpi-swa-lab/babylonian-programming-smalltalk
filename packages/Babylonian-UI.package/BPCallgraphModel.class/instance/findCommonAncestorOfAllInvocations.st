menu
findCommonAncestorOfAllInvocations
	
	| selected allInvocations ancestor paths |
	selected := self getSelectedEntry.
	self assert: selected class == BPCallgraphEntryEnter.
	allInvocations := callgraph allInvocationsOf: selected.
	ancestor := callgraph commonAncestorOf: allInvocations ignoringInvocationCounts: true.
	ancestor ifNil: [^ UIManager default inform: 'No common ancestor found'].
	paths := callgraph pathsIgnoringInvocationCountsBetween: ancestor andChildren: allInvocations.
	paths explore