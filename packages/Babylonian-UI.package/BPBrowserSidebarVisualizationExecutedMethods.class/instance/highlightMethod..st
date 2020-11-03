as yet unclassified
highlightMethod: aMethodReference
	
	self getMethods
		withIndexDo: [:each :i | (each getClass == aMethodReference actualClass and: [each getSelector == aMethodReference selector]) ifTrue: [^ self setIndex: i]]