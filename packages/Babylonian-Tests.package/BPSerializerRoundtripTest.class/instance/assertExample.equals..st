helper
assertExample: anExample1 equals: anExample2

	self assert: anExample1 exampleName equals: anExample2 exampleName.
	self assert: anExample1 expectedResult equals: anExample2 expectedResult.
	self assert: anExample1 argumentScripts equals: anExample2 argumentScripts.
	self assert: anExample1 receiverConstructorString equals: anExample2 receiverConstructorString.