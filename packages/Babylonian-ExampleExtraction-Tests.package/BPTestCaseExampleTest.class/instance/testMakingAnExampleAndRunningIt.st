actual-tests
testMakingAnExampleAndRunningIt
	
	| testCaseExample |
	testCaseExample := BPTestCaseExample new.
	testCaseExample
		testCaseClassFrom: BPTestCaseExampleTest name;
		methodSelector: #testSomething.
		
	testCaseExample run.
	
	self assert: testCaseExample morphClass equals: BPTestCaseExampleMorph.
	self assert: (testCaseExample asPragma includesSubstring: 'testCaseExampleNamed:').