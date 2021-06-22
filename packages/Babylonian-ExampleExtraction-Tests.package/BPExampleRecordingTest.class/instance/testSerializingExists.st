tests-serializing
testSerializingExists
	
	"TODO fix sometime"
	"| receiver |
	
	self assert: self recordings isEmpty.
	
	receiver := BPClassWithInstanceVariables defaultWithAnotherDefaultAsMyObject.
	
	self
		recordMethod: #doSomethingWithTheMyObjectMyNumber
		inClass: BPClassWithInstanceVariables
		forInstancesAndParameters: {receiver -> {}} asDictionary.
	
	self assert: self recordings isEmpty not.
	self assert: self getMockTreesForFirstRecording first serialize isString." "self halt"