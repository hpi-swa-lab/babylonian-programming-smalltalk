as yet unclassified
getMethods
	
	| list |
	list := super getMethods copy.

	methodIndex > 0 ifTrue: [| selectedEntry entries |
		list addLast: '################################################################################'.
		selectedEntry := super getMethods at: methodIndex.
		entries := self callgraph select: [:each | each class == BPCallgraphEntryEnter 
			and: [each getClass == selectedEntry getClass] 
			and: [each getSelector == selectedEntry getSelector]
			and: [each getBlockIdx == selectedEntry getBlockIdx]].
		entries withIndexDo: [:entry :i | | path |
			list addLast: (Text string: 'Invocation ', i attribute: TextEmphasis bold).
			path := entry pathWithoutContextMovingRight.
			"path overlappingPairsDo: [:a :b |
				list add: a.
				self callgraph do: [:each | (each isKindOf: BPCallgraphEntryCustomEvent) ifTrue: [list add: each]] between: a and: b].
			list add: path last."
			
			"path do: [:each |
				list add: each.
				list addAll: (each children select: [:child | child isKindOf: BPCallgraphEntryCustomEvent])]."
			
			list addAll: path.
			
			"i < entries size ifTrue: [list addLast: '------------------------------------------------------------']"]].
	
	^ list