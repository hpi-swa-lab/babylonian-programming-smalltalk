list bottom
bottomMenu: aMenuMorph for: entry
	
	entry class == BPCallgraphEntryEnter ifTrue: [
		aMenuMorph
		add: 'find common ancestor of all invocations of this method' 
		action: [| allInvocations ancestor paths |
			allInvocations := self callgraph allInvocationsOf: entry.
			ancestor := self callgraph commonAncestorOf: allInvocations ignoringInvocationCounts: true.
			ancestor ifNil: [^ UIManager default inform: 'No common ancestor found'].
			paths := self callgraph pathsBetween: ancestor andChildren: allInvocations.
			paths explore]].
	
	(entry respondsTo: #methodReference) ifTrue: [
		aMenuMorph	
			add: 'browse'
			action: [self browseMethod: entry methodReference]].
	((entry isKindOf: BPCallgraphEntry) or: [entry isKindOf: BPCallgraphPathPart]) ifTrue: [
		aMenuMorph
			add: 'select'
			action: [self addEntryToGlobalSelection: entry]]