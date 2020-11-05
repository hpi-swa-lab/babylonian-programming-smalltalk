list bottom
bottomEntries
	
	^ self selectedTopEntry ifNil: [{}] ifNotNil: [:topEntry |
		cache at: topEntry ifAbsentPut: [
			(topEntry isKindOf: BPCallgraphPathBabylonianTraceBased)
				ifFalse: [{}]
				ifTrue: [self calculateBottomContent]]]