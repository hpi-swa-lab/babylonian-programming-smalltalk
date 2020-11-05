list bottom
bottomEntries
	
	^ self selectedTopEntry ifNil: [{}] ifNotNil: [:topEntry |
		cache at: topEntry ifAbsentPut: [self calculateBottomContent]]