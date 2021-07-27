tests-mocking
testMockIsCompleteEnoughForPrintString
	
	| receiver miniReceiver |
	
	self assert: self recordings isEmpty.
	
	receiver := WebRequest new.

	self
		recordMethod: #initialize
		inClass: WebRequest
		forInstancesAndParameters: {receiver -> {}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	miniReceiver := self getMinimizedObjectsForFirstRecording first.
	self assert: miniReceiver printString isString.
	self flag: #TODO. "why does the simulation think #newProcess is called"