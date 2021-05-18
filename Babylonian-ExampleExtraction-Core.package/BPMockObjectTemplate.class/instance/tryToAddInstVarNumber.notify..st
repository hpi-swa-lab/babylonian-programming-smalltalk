record mock
tryToAddInstVarNumber: aNumber notify: aMockTree
	
	| instVarValue |
	(self objectIsLeaf: receiver) ifTrue: [^ self].
	
	(instVarNumbersAndValues includesKey: aNumber) ifTrue: [^ self].
	(blackList includes: aNumber) ifTrue: [^ self].
	instVarValue := receiver instVarAt: aNumber.
	(self objectIsLeaf: instVarValue)
		ifTrue: [self addLeaf: instVarValue forInstVarNumber: aNumber]
		ifFalse: [self addMock: instVarValue forInstVarNumber: aNumber notify: aMockTree].
		"Special version for Collections?"