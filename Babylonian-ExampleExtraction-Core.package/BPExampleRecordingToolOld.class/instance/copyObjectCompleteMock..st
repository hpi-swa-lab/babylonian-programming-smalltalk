copying
copyObjectCompleteMock: anObject
	
	
	| mockedObject |
	mockedObject := Dictionary new.
	"save like, everything"
	anObject class methodDict keys do: [:methodSelector | mockedObject at: methodSelector put: (anObject perform: methodSelector)].
	
	^ mockedObject