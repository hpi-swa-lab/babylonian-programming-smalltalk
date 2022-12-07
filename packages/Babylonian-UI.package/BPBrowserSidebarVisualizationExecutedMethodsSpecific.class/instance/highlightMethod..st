actions
highlightMethod: aMethodReference
	
	self example ifNil: [^ true].
	self topEntries
		withIndexDo: [:each :i | (each getClass == aMethodReference actualClass 
			and: [each getSelector == aMethodReference selector]) ifTrue: [^ self topIndex: i]]