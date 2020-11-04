list bottom
bottomEntries
	
	^ self selectedTopEntry ifNil: [{}] ifNotNil: [:topEntry |
		(topEntry isKindOf: BPCallgraphPathBabylonianTraceBased) ifFalse: [^ {}].
		cache at: topEntry ifAbsentPut: [| entries list |
			list := OrderedCollection new.
			entries := self callgraph select: [:each | (each isKindOf: BPCallgraphEntryBPProbeOrAssertion) and: [each id == topEntry id]].
			entries withIndexDo: [:entry :i | | attributes |
				attributes := OrderedCollection with: TextEmphasis bold.
				list addLast: (Text string: 'Hit ', i attributes: attributes).
				list addAll: entry pathWithoutContextMovingRight].
			list]]