tests
testCanBeCreatedInPseudoGeneratedMethod
	"Generated from an example, do not modify"
	
	self assert: true equals: (BPExampleToTest new canBeCreated: 'testCanBeCreatedInPseudoGeneratedMethod' in: self class).