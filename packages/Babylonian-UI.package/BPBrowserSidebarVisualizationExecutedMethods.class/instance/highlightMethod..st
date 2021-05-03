actions
highlightMethod: aMethodReference
	
	self topEntries
		withIndexDo: [:each :i | (each getClass == aMethodReference actualClass 
			and: [each getSelector == aMethodReference selector]) ifTrue: [^ self topIndex: i]]