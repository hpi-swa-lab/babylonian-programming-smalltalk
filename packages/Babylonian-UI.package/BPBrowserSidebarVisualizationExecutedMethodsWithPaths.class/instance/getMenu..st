as yet unclassified
getMenu: shiftKeyState
	
	| method superMenu menu allInvocations |
	superMenu := super getMenu: shiftKeyState.
	
	method := self getMethods at: self getIndex.
	method class == BPCallgraphEntryEnter ifFalse: [^ superMenu].
	allInvocations := self callgraph select: [:each | each class == BPCallgraphEntryEnter and: [each equalsClassSelectorBlockIdx: method]].
	
	menu := (superMenu ifNil: [MenuMorph new])
		add: 'find common ancestor of all invocations of this method' 
		action: [| ancestor paths |
			ancestor := self callgraph commonAncestorOf: allInvocations ignoringInvocationCounts: true.
			ancestor ifNil: [^ UIManager default inform: 'No common ancestor found'].
			paths := self callgraph pathsIgnoringInvocationCountsBetween: ancestor andChildren: allInvocations.
			paths explore]. 
	
	^ menu