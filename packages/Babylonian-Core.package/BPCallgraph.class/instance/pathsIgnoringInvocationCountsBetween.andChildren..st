finding ancestors
pathsIgnoringInvocationCountsBetween: ancestor andChildren: aCollection
	
	| paths |
	paths := (aCollection collect: [:each | | rootPath path ancestorIndex |
		rootPath := each pathWithoutContextMovingRight.
		ancestorIndex := rootPath findLast: [:entry | entry class == BPCallgraphEntryEnter and: [ancestor equalsClassSelectorBlockIdx: entry]].
		self assert: ancestorIndex > 0.
		path := rootPath copyFrom: ancestorIndex to: rootPath size.
		path collect: #asPathPart]) withoutDuplicates.
	^ paths keys