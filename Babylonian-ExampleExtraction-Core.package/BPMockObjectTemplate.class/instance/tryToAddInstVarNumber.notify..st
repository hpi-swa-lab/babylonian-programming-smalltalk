record mock
tryToAddInstVarNumber: aNumber notify: aMockTree
	
	| instVarValue |
	
	(instVarNumbersAndValues includesKey: aNumber) ifTrue: [^ self].
	(blackList includes: aNumber) ifTrue: [^ self].
	
	instVarValue := receiver instVarAt: aNumber.
	self addMock: instVarValue forInstVarNumber: aNumber notify: aMockTree.