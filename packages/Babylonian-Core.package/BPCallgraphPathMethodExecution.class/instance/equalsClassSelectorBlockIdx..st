as yet unclassified
equalsClassSelectorBlockIdx: anObject

	self assert: (anObject class == self class or: [anObject class == BPCallgraphEntryEnter]).
	
	^ anObject getClass == class and: [anObject getSelector == selector] and: [anObject getBlockIdx == blockIndex]