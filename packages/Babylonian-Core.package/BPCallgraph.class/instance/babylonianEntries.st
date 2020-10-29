accessing
babylonianEntries
	
	babylonianEntries ifNotNil: [^ babylonianEntries].
	^ babylonianEntries := self select: [:each | each isKindOf: BPCallgraphEntryBabylonian]