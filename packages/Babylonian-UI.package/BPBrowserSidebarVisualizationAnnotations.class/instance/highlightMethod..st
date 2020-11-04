actions
highlightMethod: aMethodReference
	
	self bottomEntries
		withIndexDo: [:each :i | (each class == BPCallgraphEntryEnter
			and: [each getClass == aMethodReference actualClass]
			and: [each getSelector == aMethodReference selector]) ifTrue: [^ self bottomIndex: i]]