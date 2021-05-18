record mock
addInstVar: aNumber for: anObject
	
	"((anObject isKindOf: OrderedCollection) and: [anObject isFirstIndexNil or: [anObject isLastIndexNil]]) ifTrue: [^ self]. 
	((anObject isKindOf: Dictionary) and: [anObject isTallyNil or: [anObject isArrayNil]]) ifTrue: [^ self]. "
	"anObject isCollection ifTrue: [^ self]."
	
	objectMockMapping
		at: anObject
		ifPresent: [:mockObjectTemplate | mockObjectTemplate tryToAddInstVarNumber: aNumber notify: self]
		"ifAbsent: [Transcript showln: 'Not in MockTree: ', anObject printString]".