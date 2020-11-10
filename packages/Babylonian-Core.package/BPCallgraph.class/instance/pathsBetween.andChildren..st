finding ancestors
pathsBetween: ancestor andChildren: aCollection
	
	^ (aCollection collect: [:each | | rootPath path ancestorIndex |
		rootPath := each pathWithoutContextMovingRight.
		ancestorIndex := rootPath findLast: [:entry | entry class == BPCallgraphEntryEnter and: [ancestor equalsClassSelectorBlockIdx: entry]].
		self assert: ancestorIndex > 0.
		path := rootPath copyFrom: ancestorIndex to: rootPath size.
		(ancestor isKindOf: BPCallgraphPathPart) ifTrue: [path collect: #asPathPart] ifFalse: [path]]) withoutDuplicates