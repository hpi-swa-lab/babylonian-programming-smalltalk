list bottom
bottomEntries
	
	^ self selectedTopEntry ifNil: [{}] ifNotNil: [:topEntry |
		cache at: topEntry ifAbsentPut: [| entries paths list |
			list := OrderedCollection new.
			entries := self callgraph select: [:each | each class == BPCallgraphEntryEnter and: [topEntry equalsClassSelectorBlockIdx: each]].
			
			paths := (entries collect: [:each | each pathWithoutContextMovingRight collect: #asPathPart]) asSet asOrderedCollection.
			paths withIndexDo: [:path :i |
				list addLast: (Text string: 'Unique Invocation Path ', i attributes: {TextEmphasis bold . TextColor color: Color orange}).
				list addAll: path].
			
			entries withIndexDo: [:entry :i | | path |
				list addLast: (Text string: 'Invocation ', i attribute: TextEmphasis bold).
				path := entry pathWithoutContextMovingRight.
				list addAll: path
				"path overlappingPairsDo: [:a :b |
					list add: a.
					self callgraph do: [:each | (each isKindOf: BPCallgraphEntryCustomEvent) ifTrue: [list add: each]] between: a and: b].
				list add: path last."
				"path do: [:each |
					list add: each.
					list addAll: (each children select: [:child | child isKindOf: BPCallgraphEntryCustomEvent])]."].
			list]]