actions
highlightMethod: aMethodReference
	
	self example ifNil: [^ true].
	self bottomEntries
		withIndexDo: [:each :i | (each class == BPCallgraphEntryEnter
			and: [each getClass == aMethodReference actualClass]
			and: [each getSelector == aMethodReference selector]) ifTrue: [^ self bottomIndex: i]]