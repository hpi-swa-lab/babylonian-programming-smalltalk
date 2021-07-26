tests-mocking
testMockAssociation
	
	| receiver arguments mockArguments |
	
	self assert: self recordings isEmpty.
	
	receiver := BPClassWithInstanceVariables new.
	arguments := {1->2}.

	self
		recordMethod: #doPrintStringThis:
		inClass: BPClassWithInstanceVariables
		forInstancesAndParameters: {receiver -> arguments} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	mockArguments := self getMinimizedObjectsForFirstRecording second.
	self assert: arguments first equals: mockArguments first.