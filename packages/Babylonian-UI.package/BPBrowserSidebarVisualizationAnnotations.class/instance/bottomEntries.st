list bottom
bottomEntries
	
	^ self selectedTopEntry ifNil: [{}] ifNotNil: [:topEntry |
		(cache at: topEntry ifAbsentPut: [
			(topEntry isKindOf: BPCallgraphPathBabylonianTraceBased)
				ifFalse: [{{} . 0}]
				ifTrue: [self calculateBottomContent]]) first]